using SFCollector.Seafight.Messages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace SFCollector.Seafight
{
    public class BotCalculator
    {
        private static Thread _shipThread;
        private static Thread _connectionThread;
        [DllImport("KERNEL32.DLL", EntryPoint = "SetProcessWorkingSetSize", SetLastError = true, CallingConvention = CallingConvention.StdCall)]
        internal static extern bool SetProcessWorkingSetSize(IntPtr pProcess, int dwMinimumWorkingSetSize, int dwMaximumWorkingSetSize);
        [DllImport("KERNEL32.DLL", EntryPoint = "GetCurrentProcess", SetLastError = true, CallingConvention = CallingConvention.StdCall)]
        internal static extern IntPtr GetCurrentProcess();

        private static void ConnectionThread()
        {
            try
            {
                DateTime dateTime_ = DateTime.Now;
                while (true)
                {
                    TimeSpan ts = (DateTime.Now - Client.lastPacket);
                    if (!Server.IsConnected() || ts.TotalSeconds > 70.0)
                    {
                        Form1.form1.loadNames = 0;
                        break;
                    }
                    TimeSpan ts2 = (DateTime.Now - dateTime_);
                    if (ts2.TotalMinutes >= 1.0)
                    {
                        GC.Collect();
                        GC.WaitForPendingFinalizers();
                        if (Environment.OSVersion.Platform == PlatformID.Win32NT)
                        {
                            SetProcessWorkingSetSize(GetCurrentProcess(), -1, -1);
                        }
                        dateTime_ = DateTime.Now;
                    }
                    Thread.Sleep(1000);
                }
                Thread.Sleep(2000);
                BotLogic.running = false;
                if (Server._targetSocket != null && Server._targetSocket.Connected)
                {
                    Server._targetSocket.Close();
                }
                if (BotLogic.running)
                {
                    BotLogic.StopBotThread();
                }
                Server.Connected = false;
                BotSession.lostConnection = true;
            }
            catch (Exception ex)
            {
                BotLogic.WriteLine("There was an error in the connection-Thread!\n\n" + ex.Message);
                if (!(ex is ThreadAbortException))
                {
                    ConnectionThread();
                }
                return;
            }
        }

        private static void ShipThread()
        {
            while (true)
            {
                try
                {
                    if (Account.gClass != null)
                    {
                        CalculateCoordinates();
                    }
                    if (Client.entitys.Count > 0)
                    {
                        var shipList = Client.entitys.Values.OfType<ShipInitMessage>().ToList();
                        foreach (var ship in shipList)
                        {
                            if (ship != null)
                            {
                                CalculateCoordinatesNPC(ship);
                            }
                        }
                    }
                    Thread.Sleep(100);
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                }
            }
        }

        public static void StartThreads()
        {
            if (_shipThread != null)
            {
                _shipThread.Abort();
                int num = 0;
                while (true)
                {
                    if (!_shipThread.IsAlive)
                    {
                        if (_shipThread.ThreadState != System.Threading.ThreadState.Running)
                        {
                            break;
                        }
                    }
                    if (num >= 5)
                    {
                        break;
                    }
                    num++;
                    Thread.Sleep(1000);
                }
            }
            if (_connectionThread != null)
            {
                _connectionThread.Abort();
                int num = 0;
                while (true)
                {
                    if (!_connectionThread.IsAlive)
                    {
                        if (_connectionThread.ThreadState != System.Threading.ThreadState.Running)
                        {
                            break;
                        }
                    }
                    if (num >= 5)
                    {
                        break;
                    }
                    num++;
                    Thread.Sleep(1000);
                }
            }
            if ((BotLogic._botThread == null || !BotLogic.running) && BotLogic.attacking >= 16)
            {
                BotLogic.StartBotThread();
            }
            _shipThread = new Thread((ShipThread));
            _shipThread.Start();
            _connectionThread = new Thread((ConnectionThread));
            _connectionThread.Start();
        }

        public static void StopThreads()
        {
            if (_connectionThread != null)
            {
                _connectionThread.Abort();
            }
            if (Server._targetSocket != null && Server._targetSocket.Connected)
            {
                Server._targetSocket.Close();
            }
            if (_shipThread != null)
            {
                _shipThread.Abort();
            }
        }

        private static void CalculateCoordinates()
        {
            if (Account.position != null)
            {
                double speed = Account.speed / SimplySpeed(Account.speed);
                var user = new UserInitMessage()
                {
                    route = Account.route
                };
                if (user.route != null && user.route.Count > 0)
                {
                    try
                    {
                        if (Account.position.dX.Equals(0.0) && Account.position.dY.Equals(0.0))
                        {
                            Account.position.dX = Account.position.X;
                            Account.position.dY = Account.position.Y;
                        }
                        foreach (var current in user.route)
                        {
                            if ((user.route != null && user.route.Count == 0) || user.route == null)
                            {
                                break;
                            }
                            int newX = current.X - Account.position.X;
                            int newY = current.Y - Account.position.Y;
                            double distance = Math.Sqrt(Math.Pow((double)newX, 2.0) + Math.Pow((double)newY, 2.0));
                            if (distance > speed || (distance.Equals(1.0) && speed > 1.0))
                            {
                                double duration = speed / distance;
                                Account.position.dX += duration * (double)newX;
                                Account.position.dY += duration * (double)newY;
                                Account.position.X = (int)Account.position.dX;
                                Account.position.Y = (int)Account.position.dY;
                                if ((Account.position.X == current.X && Account.position.Y == current.Y) || duration > 1.0)
                                {
                                    user.route.Remove(current);
                                }
                                break;
                            }
                            Account.position.dX = (double)current.X;
                            Account.position.dY = (double)current.Y;
                            Account.position = current;
                            user.route.Remove(current);
                        }
                    }
                    catch (Exception)
                    {
                    }
                }
            }
        }

        private static void CalculateCoordinatesNPC(ShipInitMessage ship)
        {
            if (ship != null)
            {
                double speed = ship.speed / SimplySpeed(ship.speed);
                if (ship.route != null && ship.route.Count > 0)
                {
                    try
                    {
                        if (ship.position.dX.Equals(0.0) && ship.position.dY.Equals(0.0))
                        {
                            ship.position.dX = (double)(ship.position.X);
                            ship.position.dY = (double)(ship.position.Y);
                        }
                        foreach (var position in ship.route)
                        {
                            if ((ship.route != null && ship.route.Count == 0) || ship.route == null)
                            {
                                break;
                            }
                            int newX = position.X - ship.position.X;
                            int newY = position.Y - ship.position.Y;
                            double distance = Math.Sqrt(Math.Pow((double)newX, 2.0) + Math.Pow((double)newY, 2.0));
                            if (distance > speed)
                            {
                                double duration = speed / distance;
                                ship.position.dX += duration * (double)newX;
                                ship.position.dY += duration * (double)newY;
                                ship.position.X = (int)ship.position.dX;
                                ship.position.Y = (int)ship.position.dY;
                                if (ship.position.X == position.X && ship.position.Y == position.Y && (ship.route.Contains(position)))
                                {
                                    ship.route.Remove(position);
                                }
                                break;
                            }
                            ship.position.dX = (double)position.X;
                            ship.position.dY = (double)position.Y;
                            ship.position = position;
                            if ((ship.route.Contains(position)))
                            {
                                ship.route.Remove(position);
                            }
                        }
                    }
                    catch (Exception)
                    {
                    }
                }
            }
        }

        public static bool CalculateChance(int percentage)
        {
            return new Random().Next(100) < percentage;
        }

        private static double SimplySpeed(double Speed)
        {
            double result = 9.55;
            if (Speed > 9.5)
            {
                result = 7.5;
            }
            else if (Speed > 850.0)
            {
                result = 8.5;
            }
            return result;
        }
    }
}
