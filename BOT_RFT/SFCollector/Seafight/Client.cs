using SFCollector.Seafight.Messages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace SFCollector.Seafight
{
    public class Client
    {
        private static TcpClient _client = new TcpClient();
        private static NetworkStream _stream;
        private static Thread reader;
        private static int id;

        private static string _ip;
        private static int _port = 8101;

        public static bool loggedin = false;
        public static Dictionary<double, Message> entitys = new Dictionary<double, Message>();

        public static void StartClient(string _ip, int _port)
        {
            Client._ip = _ip;
            Client._port = _port;
            Connect();
            if (_client.Connected)
            {
                _client.NoDelay = true;
                reader = new Thread(new ThreadStart(Listen));
                reader.Start();
                Client.Send(new LoginMessage(Account.userId, Account.projectId, Account.sessionId));
                new Thread(keepAlive) { IsBackground = true }.Start();
            }
            else
            {
                Form1.form1.writeLine("There was an error while connecting to the SeaFight Realm!");
            }
        }

        public static void StopClient()
        {
            _client.Close();
            _client = new TcpClient();
            if (_stream != null)
            {
                _stream.Flush();
                _stream.Close();
            }
            loggedin = false;
        }

        private static void keepAlive()
        {
            while (_client.Connected)
            {
                Thread.Sleep(50000 - 1);
                SeafightMethods.HeatBeat();
            }
        }

        private static void Connect()
        {
            _client.Connect(_ip, _port);
            _stream = _client.GetStream();
        }

        public static void Send(Message message)
        {
            try
            {
                List<byte[]> buffer = new List<byte[]>();
                if (message is LoginMessage)
                {
                    List<byte[]> editBuffer = buffer;
                    byte[] item = new byte[1];
                    editBuffer.Add(item);
                }
                buffer.Add(BitConverter.GetBytes((short)message.Write().Length).Reverse<byte>().ToArray<byte>());
                buffer.Add(message.Write());
                byte[] sendBuffer = buffer.SelectMany(bytes => bytes).ToArray<byte>();
                _stream.Write(sendBuffer, 0, sendBuffer.Length);
            }
            catch (Exception)
            {
            }
        }

        private static void Listen()
        {
            while (_client.Connected)
            {
                try
                {
                    byte[] buffer = new byte[32649];
                    _stream = _client.GetStream();
                    _stream.Read(buffer, 0, buffer.Length);
                    if (buffer.Length > 0)
                    {
                        Reader reader = new Reader(0, buffer);
                        while (reader.index < buffer.Length - 2)
                        {
                            int length = reader.readShort();
                            if (length > 0)
                            {
                                id = reader.readShort();
                                if (id == new ClientInitMessage().getID())
                                {
                                    var clientInit = new ClientInitMessage();
                                    clientInit.Read(reader);
                                    Account.mapId = clientInit.mapInfo.MapID;
                                    Account.map = clientInit.mapInfo.Map;
                                    Form1.form1.writeLine("Client found.");
                                    loggedin = true;
                                }
                                else
                                    if (id == new UserInitMessage().getID())
                                {
                                    var userUpdate = new UserInitMessage();
                                    userUpdate.Read(reader);
                                    Account.hasRepairMaatLevel5 = (bool)(userUpdate.int_7 == 2);
                                    Account.level = userUpdate.Level;
                                    Account.hitPoints = userUpdate.currentHealth.HitPoints;
                                    Account.voodooPoints = userUpdate.currentHealth.VoodooPoints;
                                    Account.position = userUpdate.position;
                                    Client.loggedin = true;
                                    Form1.form1.writeLine("Found User Info.");
                                }
                                else
                                    if (id == new AmsUpdateMessage().getID())
                                {
                                    var amsUpdate = new AmsUpdateMessage();
                                    amsUpdate.Read(reader);
                                    if (amsUpdate.entityId == Account.userId)
                                    {
                                        foreach (var amsItem in amsUpdate.amsUpdate)
                                        {
                                            if (amsItem.Key == 45)
                                            {
                                                if (amsUpdate.space == 1)
                                                    Account.maxHitPoints = (int)amsItem.Value;
                                                if (amsUpdate.space == 0)
                                                    Account.hitPoints = (int)amsItem.Value;
                                            }
                                            if (amsItem.Key == 80)
                                            {
                                                Account.speed = amsItem.Value / 100;
                                            }
                                            if (amsItem.Key == 86)
                                            {
                                                if (amsUpdate.space == 1)
                                                    Account.maxVoodooPoints = (int)amsItem.Value;
                                                if (amsUpdate.space == 0)
                                                    Account.voodooPoints = (int)amsItem.Value;
                                            }
                                        }
                                    }
                                }
                                else
                                    if (id == new MapChangeMessage().getID())
                                {
                                    var mapChange = new MapChangeMessage();
                                    mapChange.Read(reader);
                                    Account.mapId = mapChange.mapInfo.MapID;
                                    Account.map = mapChange.mapInfo.Map;
                                    Account.position = mapChange.position;
                                    if (mapChange.mapInfo.MapID == 500)
                                    {
                                        entitys.Clear();
                                    }
                                    Form1.form1.writeLine("Map " + mapChange.mapInfo.Map + "[" + mapChange.mapInfo.MapID + "]");
                                }
                                else
                                    if (id == new RouteMessage().getID())
                                {
                                    var route = new RouteMessage();
                                    route.Read(reader);
                                    if (route.entityId == Account.userId)
                                    {
                                        Account.moving = true;
                                        Account.position.X = route.WayPath[0].X;
                                        Account.position.Y = route.WayPath[0].Y;
                                        Account.route = route.WayPath;
                                    }
                                }
                                else
                                    if (id == new RepairMessage(0).getID())
                                {
                                    var repair = new RepairMessage(0);
                                    repair.Read(reader);
                                    if (repair.Modus == 0)
                                    {
                                        Account.repairing = true;
                                        Form1.form1.writeLine("Start Repair.");
                                    }
                                    else
                                    {
                                        Account.repairing = false;
                                        Form1.form1.writeLine("Stop Repair.");
                                    }
                                }
                                else
                                    if (id == new BoxInitMessage().getID())
                                {
                                    var boxInit = new BoxInitMessage();
                                    boxInit.Read(reader);
                                    if (!entitys.ContainsKey(boxInit.entityId))
                                        entitys.Add(boxInit.entityId, boxInit);
                                }
                                else
                                    if (id == new BoxRemoveMessage().getID())
                                {
                                    var boxRemove = new BoxRemoveMessage();
                                    boxRemove.Read(reader);
                                    if (boxRemove.entityId == BotMethods.targetentityId)
                                    {
                                        BotMethods.targetentityId = 0.0;
                                        BotSession.sessionboxes++;
                                    }
                                    if (entitys.ContainsKey(boxRemove.entityId))
                                        entitys.Remove(boxRemove.entityId);
                                }
                                else
                                    if (id == new DisplayResourceIDMessage().getID())
                                {
                                    var displayResourceId = new DisplayResourceIDMessage();
                                    displayResourceId.Read(reader);
                                    BotMethods.ResourceIdHandler(displayResourceId.Message, displayResourceId.MessageArgs);
                                }
                                else
                                    if (id == new HeartbeatMessage(0).getID())
                                {
                                    var heartbeat = new HeartbeatMessage(0);
                                    heartbeat.Read(reader);
                                    Send(new HeartbeatMessage(0));
                                }
                                else
                                {
                                    if (length > 2)
                                        reader.index += length - 2;
                                    else
                                        reader.index += length;
                                }
                            }
                        }
                    }
                }
                catch (Exception)
                {
                }
            }
            if (loggedin)
            {
                loggedin = false;
                Form1.form1.writeLine("Connection Lost.");
                StopClient();
                Form1.form1.writeLine("Reconnecting.");
                SeafightClientLogin.Login(Form1.form1.username, Form1.form1.password);
            }
        }
    }
}
