using SFCollector.Seafight.Messages;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;
using System.Threading;
using System.Diagnostics;

namespace SFCollector.Seafight
{
    public class BotMethods
    {
        public static double targetentityId;
        public static double lastEntityId = 0.0;
        public static int quarter = 0;
        public static Point moveTo_1 = new Point(60, 55);
        public static Point moveTo_2 = new Point(338, 230);
        public static Point moveTo_3 = new Point(310, -204);
        public static Point moveTo_4 = new Point(506, -54);
        public static Point moveTo_5 = new Point(300, 0);
        public static Point corner_1 = new Point(4, 0);
        public static Point corner_2 = new Point(300, 295);
        public static Point corner_3 = new Point(298, -293);
        public static Point corner_4 = new Point(594, 2);
        public static Dictionary<int, string> monsterNames;
        public static Dictionary<int, string> npcNames;

        public static BoxInitMessage GetClosestBox()
        {
            var point = new BoxInitMessage(0, 0);
            try
            {
                int maxDistance = 6000;
                int distance = maxDistance;
                var boxCopy = Client.entitys.Values.ToList().OfType<BoxInitMessage>();
                foreach (var box in boxCopy)
                {
                    int closerDistance = (int)CalculateDistance(box.position);
                    if (closerDistance < distance && (((box.type == 17 || box.type == 19) && BotLogic.collectMeat) || (box.type == 15 && BotLogic.collectEventChests) || (box.type == 5 && BotLogic.collectChests) || (box.type == 20 && BotLogic.collectCargoBoxes) || (box.type == 6 && BotLogic.collectLionChests)))
                    {
                        distance = closerDistance;
                        point = box;
                        targetentityId = box.entityId;
                    }
                    else if (closerDistance < distance && (box.type == 0 || box.type == 1 || box.type == 2) && BotLogic.collectBoxes && (box.position != Account.position) && BotLogic.collectBoxes)
                    {
                        distance = closerDistance;
                        point = box;
                        targetentityId = box.entityId;
                    }
                }
            }
            catch (Exception)
            {
            }
            return point;
        }

        public static BoxInitMessage GetClosestBoxInRange(Point _point, int _range)
        {
            var point = new BoxInitMessage(0.0, 0, new PositionStub(0, 0), 0, false);
            try
            {
                int maxDistance = 6000;
                int distance = maxDistance;
                var boxCopy = Client.entitys.Values.ToList().OfType<BoxInitMessage>();
                foreach (var box in boxCopy)
                {
                        int boxDistance = (int)BotMethods.CalculateDistance(box.position);
                        int range = (int)BotMethods.CalculateDistance(_point.X, _point.Y, box.position.X, box.position.Y);
                        if (boxDistance < distance && range < _range)
                        {
                            if ((box.type == 0 || box.type == 1 || box.type == 2) && BotLogic.collectBoxes && (box.position != Account.position))
                            {
                                distance = boxDistance;
                                point = box;
                            }
                            else if (((box.type == 17 || box.type == 19) && BotLogic.collectMeat) || (box.type == 15 && BotLogic.collectEventChests) || (box.type == 5 && BotLogic.collectChests) || (box.type == 20 && BotLogic.collectCargoBoxes) || (box.type == 6 && BotLogic.collectLionChests))
                            {
                                distance = boxDistance;
                                point = box;
                            }
                        }
                }
            }
            catch (Exception)
            {
            }
            return point;
        }

        public static ShipInitMessage GetClosestNPC()
        {
            double distance = 0;
            double closerDistance = 6000.0;
            var closestShip = new ShipInitMessage(0.0, 0, -1, 1, 1, new PositionStub(0, 0), new List<PositionStub>());
            var shipCopy = Client.entitys.Values.ToList().OfType<ShipInitMessage>();
            try
            {
                foreach (var ship in shipCopy)
                {
                    if (IsValidNPC(ship))
                    {
                        distance = BotMethods.CalculateDistance(ship.position);
                            if (distance < closerDistance)
                            {
                                closerDistance = distance;
                                closestShip = ship;
                            }
                    }
                }
            }
            catch (Exception)
            {
            }
            return closestShip;
        }

        public static ShipInitMessage GetClosestShip()
        {
            var distance = 0.0;
            var closerDistance = 6000.0;
            var closestShip = new ShipInitMessage(0.0, 0, -1, 1, 1, new PositionStub(0, 0), new List<PositionStub>());
            var shipCopy = Client.entitys.Values.ToList().OfType<ShipInitMessage>();
            try
            {
                foreach (var ship in shipCopy)
                {
                    distance = BotMethods.CalculateDistance(ship.position);
                    if (distance < closerDistance)
                    {
                        closerDistance = distance;
                        closestShip = ship;
                        targetentityId = ship.entityId;
                    }
                }
            }
            catch (Exception)
            {
            }
            return closestShip;
        }

        public static MonsterInitMessage GetClosestMonster()
        {
            double distance = 0;
            double closerDistance = 6000.0;
            var closestMonster = new MonsterInitMessage(0.0, 0, -1, 1, 1, new PositionStub(0, 0));
            var monsterCopy = Client.entitys.Values.ToList().OfType<MonsterInitMessage>();
            try
            {
                foreach (var monster in monsterCopy)
                {
                    if (IsValidMonster(monster))
                    {
                        distance = CalculateDistance(monster.position);
                        if (distance < closerDistance)
                        {
                            closerDistance = distance;
                            closestMonster = monster;
                        }
                    }
                }
            }
            catch (Exception)
            {
            }
            return closestMonster;
        }

        public static ShipInitMessage GetClosestShipRaid()
        {
            double distance = 0;
            double closerDistance = 6000.0;
            var closestShip = new ShipInitMessage(0.0, 0, -1, 1, 1, new PositionStub(0, 0), new List<PositionStub>());
            var shipCopy = Client.entitys.Values.ToList().OfType<ShipInitMessage>();
            try
            {
                foreach (var ship in shipCopy)
                {
                    if (IsValidRaidNPC(ship))
                    {
                        distance = CalculateDistance(ship.position);
                        if (distance < closerDistance)
                        {
                            closerDistance = distance;
                            closestShip = ship;
                        }
                    }
                }
            }
            catch (Exception)
            {
            }
            return closestShip;
        }

        public static void ActivatePowderAndPlates(bool powder, bool plates)
        {
        }

        public static bool IsValidMonster(MonsterInitMessage monster)
        {
            foreach (var monsterName in BotLogic.entitys.Keys)
            {
                string[] args = monsterName.Split('|');
                if (args[0] == monster.name && BotLogic.entitys[monsterName] && Client.entitys.ContainsKey(monster.entityId))
                {
                    (Client.entitys[monster.entityId] as MonsterInitMessage).harpoonId = HarpoonHandler(args[1]);
                    return true;
                }
            }
            return false;
        }

        public static bool IsValidNPC(ShipInitMessage ship)
        {
            if (ship == null)
            {
                return false;
            }
            try
            {
                foreach (var npcName in BotLogic.entitys.Keys)
                {
                    string[] args = npcName.Split('|');
                    if (args[0] == (ship.name) && BotLogic.entitys[npcName] && Client.entitys.ContainsKey(ship.entityId))
                    {
                        (Client.entitys[ship.entityId] as ShipInitMessage).ammoId = AmmoHandler(args[1]);
                        if (args[2] == "true" || args[2] == "1")
                        {
                            (Client.entitys[ship.entityId] as ShipInitMessage).usePowder = true;
                        }
                        else
                        {
                            (Client.entitys[ship.entityId] as ShipInitMessage).usePowder = false;
                        }
                        if (args[3] == "true" || args[3] == "1")
                        {
                            (Client.entitys[ship.entityId] as ShipInitMessage).usePlates = true;
                        }
                        else
                        {
                            (Client.entitys[ship.entityId] as ShipInitMessage).usePlates = false;
                        }
                        if (args[4] == "true" || args[4] == "1")
                        {
                            (Client.entitys[ship.entityId] as ShipInitMessage).useBoard = true;
                        }
                        else
                        {
                            (Client.entitys[ship.entityId] as ShipInitMessage).useBoard = false;
                        }
                        return !BotLogic.onlyFullHPNpcs || ship.pointsCurrent.HitPoints == ship.pointsMax.HitPoints ? true : false;
                    }
                }
            }
            catch (Exception)
            {
            }
            return false;
        }

        public static Point MoveToNPC(ShipInitMessage ship)
        {
                var random = new Random();
                var range = (int)(Account.canonRange > 12 ? Account.canonRange - 6 : Account.canonRange) + new Random().Next(-2, 2);
                var point = new Point(ship.position.X, ship.position.Y);
                var box = GetClosestBoxInRange(point, range);
                if (box.position.X == 0 || box.entityId.Equals(0.0) || box.position.Y == 0)
                {
                    SeafightMethods.Move(ship.position.X, ship.position.Y);
                    Thread.Sleep(random.Next(100, 300));
                    for (int i = 0; i < Account.route.Count; i++)
                    {
                        var pos = Account.route.ElementAt(i);
                        if (BotMethods.CalculateDistance(ship.position.X, ship.position.Y, pos.X, pos.Y) <= range && BotMethods.CalculateDistance(ship.position.X, ship.position.Y, pos.X, pos.Y) >= range - 5)
                        {
                            point = new Point(pos.X, pos.Y);
                            break;
                        }
                    }
                }
                else
                {
                    point = new Point(box.position.X, box.position.Y);
                }
                SeafightMethods.Move(point.X, point.Y);
                Thread.Sleep(random.Next(100, 250));
                return point;
        }

        public static Point MoveRandom()
        {
            var point = new Point(moveTo_1.X, moveTo_1.Y);
            var random = new Random();
            if (BotMethods.quarter == 0)
            {
                point = new Point(BotMethods.moveTo_1.X + random.Next(-20, 20), BotMethods.moveTo_1.Y + random.Next(-20, 20));
                BotMethods.quarter++;
            }
            else if (BotMethods.quarter == 1)
            {
                point = new Point(BotMethods.moveTo_4.X + random.Next(-20, 20), BotMethods.moveTo_4.Y + random.Next(-20, 20));
                BotMethods.quarter++;
            }
            else if (BotMethods.quarter == 2)
            {
                point = new Point(BotMethods.moveTo_2.X + random.Next(-20, 20), BotMethods.moveTo_2.Y + random.Next(-20, 20));
                BotMethods.quarter++;
            }
            else if (BotMethods.quarter == 3)
            {
                point = new Point(BotMethods.moveTo_3.X + random.Next(-20, 20), BotMethods.moveTo_3.Y + random.Next(-20, 20));
                BotMethods.quarter++;
            }
            else if (BotMethods.quarter == 4)
            {
                point = new Point(BotMethods.moveTo_5.X + random.Next(-20, 20), BotMethods.moveTo_5.Y + random.Next(-20, 20));
                BotMethods.quarter = 0;
            }
            return point;
        }

        public static Point MoveToCorner()
        {
            var X = corner_1.X;
            var Y = corner_1.Y;
            var adder = new Random().Next(0, 8);
            switch (GetQuarter())
            {
                case 1:
                    X = corner_1.X + adder;
                    Y = corner_1.Y + adder;
                    break;
                case 2:
                    X = corner_2.X - adder;
                    Y = corner_2.Y - adder;
                    break;
                case 3:
                    X = corner_4.X - adder;
                    Y = corner_4.Y - adder;
                    break;
                case 4:
                    X = corner_3.X - adder;
                    Y = corner_3.Y + adder;
                    break;
                default:
                    X = corner_1.X;
                    Y = corner_1.Y;
                    break;
            }
            BotLogic.WriteLine("Moving to Corner.");
            return new Point(X, Y);
        }

        public static Point MoveToFarestCorner()
        {
            Random random = new Random();
            int X = corner_1.X;
            int Y = corner_1.Y;
            int adder = random.Next(0, 6);
            switch (GetQuarter())
            {
                case 1:
                    X = corner_3.X - adder;
                    Y = corner_3.Y + adder;
                    break;
                case 2:
                    X = corner_4.X - adder;
                    Y = corner_4.Y - adder;
                    break;
                case 3:
                    X = corner_1.X + adder;
                    Y = corner_1.Y + adder;
                    break;
                case 4:
                    X = corner_2.X - adder;
                    Y = corner_2.Y - adder;
                    break;
                default:
                    X = corner_1.X + adder;
                    Y = corner_1.Y + adder;
                    break;
            }
            return new Point(X, Y);
        }

        public static void JoinMapThread(string join = "Join Raid", int MapID = 0)
        {
            try
            {
                Thread.Sleep(new Random().Next(500, 1500));
                BotLogic.WriteLine("Moving to corner before " + (join != "Join Raid" ? MapID == 0 ? "leaving Map." : join != "Teleport" ? "joining Bonusmap." : "Teleporting." : "joining Raid."));
                Point point = MoveToCorner();
                SeafightMethods.Move(point.X, point.Y);
                Thread.Sleep(3500);
                int counter = 3;
                int x = 0;
                int y = 0;
                while (Account.route.Count >= 2 && counter > 0 && BotLogic.running && Account.mapId != 500)
                {
                    if (x != Account.position.X || y != Account.position.Y)
                    {
                        x = Account.position.X;
                        y = Account.position.Y;
                        counter = 3;
                    }
                    if (x == point.X && y == point.Y)
                    {
                        Thread.Sleep(200);
                        break;
                    }
                    Thread.Sleep(1000);
                    counter--;
                }
                if (Account.mapId == 500)
                {
                    return;
                }
                counter = 0;
                switch (join)
                {
                    case "Join Raid":
                        SeafightMethods.ActivateItem(Account.raidMedallion);
                        break;
                    case "Join BM":
                        SeafightMethods.JoinBonusMap(MapID);
                        break;
                    case "Leave Kraken":
                        BotLogic.WriteLine("Leaving Map.");
                        Account.joining = true;
                        break;
                    case "Teleport":
                        //BotMethods.Teleport(MapID);
                        break;
                    default:
                        BotLogic.WriteLine("Error in Join Map Thread!\n\nUnknown Map Type! #" + join + "\n" + MapID);
                        return;
                }
                Thread.Sleep(500);
                while (counter < 16)
                {
                    counter++;
                    Thread.Sleep(1000);
                    if (!Account.joining)
                    {
                        break;
                    }
                }
            }
            catch (Exception)
            {
            }
            Account.joining = false;
        }

        public static int GetQuarter()
        {
            if (CalculateDistance(corner_1.X, corner_1.Y) < 282.7)
                return 1;
            if (CalculateDistance(corner_2.X, corner_2.Y) < 280.5)
                return 2;
            if (CalculateDistance(corner_4.X, corner_4.Y) < CalculateDistance(corner_3.X, corner_3.Y))
                return 3;

            return 4;
        }

        public static Point GetQuarter(bool use = true)
        {
            double distance = BotMethods.CalculateDistance(corner_1.X, corner_1.Y);
            double closerDistance = distance;
            Point result = corner_4;
            distance = BotMethods.CalculateDistance(corner_3.X, corner_3.Y);
            if (closerDistance < distance)
            {
                closerDistance = distance;
                result = corner_2;
            }
            distance = BotMethods.CalculateDistance(corner_2.X, corner_2.Y);
            if (closerDistance < distance)
            {
                closerDistance = distance;
                result = corner_3;
            }
            distance = BotMethods.CalculateDistance(corner_4.X, corner_4.Y);
            if (closerDistance < distance)
            {
                result = corner_1;
            }
            return result;
        }

        public static double CalculateDistance(int x1, int y1, int x2, int y2)
        {
            return Math.Sqrt(Math.Pow(x2 - x1, 2.0) + Math.Pow(y2 - y1, 2.0));
        }

        public static double CalculateDistance(int x, int y)
        {
            return CalculateDistance(Account.position.X, Account.position.Y, x, y);
        }

        public static double CalculateDistance(PositionStub point)
        {
            return CalculateDistance(point.X, point.Y);
        }

        public static bool IsValidRaidNPC(ShipInitMessage ship)
        {
            if (IsBoss(ship))
            {
                if (BotLogic.shootRaidBoss)
                {
                    return true;
                }
            }
            else
            {
                return true;
            }
            return false;
        }

        public static bool RaidBossExists()
        {
            var shipCopy = Client.entitys.Values.ToList().OfType<ShipInitMessage>();
            foreach (var ship in shipCopy)
            {
                if (IsBoss(ship))
                {
                    return true;
                }
            }
            return false;
        }

        public static ShipInitMessage GetRaidBoss()
        {
            var shipCopy = Client.entitys.Values.ToList().OfType<ShipInitMessage>();
            var _ship = new ShipInitMessage(0.0, 0, 0, 0, 0, new PositionStub(0, 0), new List<PositionStub>());
            foreach (var ship in shipCopy)
            {
                if (IsBoss(ship))
                {
                    return ship;
                }
            }
            return _ship;
        }

        public static bool IsBoss(ShipInitMessage ship)
        {
            return (ship.nameId == 1150 || ship.nameId == 1265 || ship.nameId == 1753 || ship.nameId == 1754);
        }

        public static string Between(string input_1, string input_2, string input_3)
        {
            try
            {
                int start = input_1.IndexOf(input_2);
                int end = input_1.IndexOf(input_3, start);
                return input_1.Substring(start + input_2.Length, end - start - input_2.Length);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Parsing Error!\nhelp.Between cut off!\n" + ex.Message);
                return string.Empty;
            }
        }

        public static string GetCompileTime(string server = "int1")
        {
            using (WebClient wc = new WebClient())
            {
                return (wc.DownloadString($"http://{server}.seafight.bigpoint.com/api/client/getCompileTime.php"));  
            }
        }

        public static Dictionary<int, string> LoadMonsterNames()
        {
            var _out = new Dictionary<int, string>();
            try
            {
                string resource = CreateWebClientRequest("https://www.seafight.com/client/lang/labels.lang.php?lang=" + Account.language);
                resource = Between(resource, "<category name=\"seafight.labels.Monsters\">", "</category>");
                string[] splitter = { "<item name=\"" };
                string[] args = resource.Split(splitter, StringSplitOptions.None);
                for (int i = 0; i < args.Length; i++)
                {
                    if (args[i].Contains("<![CDATA[") && !args[i].Contains("groupname"))
                    {
                        string npc = Between(args[i], "<![CDATA[", "]]>");
                        string id = args[i].ElementAt(0) + Between(args[i], args[i].ElementAt(0).ToString(), "\">");
                        id = Regex.Replace(id, "[^0-9.]", "");
                        if (!_out.ContainsKey(int.Parse(id)))
                            _out.Add(int.Parse(id), npc);
                    }
                }
            }
            catch (Exception)
            {
                BotLogic.WriteLine("There was an Error while loading Monster-names.");
            }
            return _out;
        }

        public static Dictionary<int, string> LoadNPCNames()
        {
            var _out = new Dictionary<int, string>();
            try
            {
                string resource = CreateWebClientRequest("http://www.seafight.com/client/lang/npcnames.php?lang=" + Account.language);
                string[] splitter = { "<item name=\"" };
                string[] args = resource.Split(splitter, StringSplitOptions.None);
                for (int i = 0; i < args.Length; i++)
                {
                    if (args[i].Contains("<![CDATA["))
                    {
                        string npc = Between(args[i], "<![CDATA[", "]]>");
                        string id = args[i].ElementAt(0) + Between(args[i], args[i].ElementAt(0).ToString(), "\">");
                        id = Regex.Replace(id, "[^0-9.]", "");
                        if (!_out.ContainsKey(int.Parse(id)))
                            _out.Add(int.Parse(id), npc);
                    }
                }
            }
            catch (Exception)
            {
                BotLogic.WriteLine("There was an Error while loading NPC-names.");
            }
            return _out;
        }

        public static void LoadNames()
        {
            npcNames = LoadNPCNames();
            monsterNames = LoadMonsterNames();
            BotLogic.WriteLine("Names Loaded!");
            Form1.form1.loadNames = 1;
        }

        public static string CreateWebClientRequest(string url)
        {
            WebClient _client = new WebClient()
            {
                Encoding = Encoding.UTF8
            };
            string result = "";
            try
            {
                result = _client.DownloadString(url);
            }
            catch (Exception ex)
            {
                BotLogic.WriteLine("Could not connect to request Url!\n" + ex.Message);
            }
            finally
            {
                if (_client != null)
                {
                    _client.Dispose();
                }
            }
            return result;
        }

        public static void ClearCache()
        {
            try
            {
                Process.Start("rundll32.exe", "InetCpl.cpl,ClearMyTracksByProcess 10");
            }
            catch (Exception ex)
            {
                BotLogic.WriteLine("Could not clear cache.\n" + ex.Message);
            }
        }

        public static bool AcceptAllCertifications(object sender, System.Security.Cryptography.X509Certificates.X509Certificate certification, System.Security.Cryptography.X509Certificates.X509Chain chain, System.Net.Security.SslPolicyErrors sslPolicyErrors)
        {
            return true;
        }

        public static double GetTime()
        {
            Int64 retval = 0;
            var st = new DateTime(1970, 1, 1);
            TimeSpan t = (DateTime.Now.ToUniversalTime() - st);
            retval = (Int64)(t.TotalMilliseconds + 0.5);
            return retval;
        }

        public static string GetBoxType(BoxInitMessage box)
        {
            var text = "Item";
            if (box.type < 3)
            {
                return text;
            }
            else
            if (box.type == 20)
            {
                text = "Cargo";
            }
            else
            if (box.type == 17 || box.type == 19)
            {
                text = "Meat";
            }
            else
            if (box.type == 5)
            {
                text = "Chest";
            }
            else
            if (box.type == 15)
            {
                text = "Event Chest";
            }
            else
            if (box.type == 4)
            {
                text = "Candle";
            }
            else text = "Unkown Item";
            return text;
        }

        public static void ResourceIdHandler(string Message, List<string> Args)
        {
            int value = 0;
            switch (Message)
            {
                case "warmap:boxelp":
                    value = int.Parse(Args.First());
                    BotLogic.WriteLine($"+ {value}x ELP.");
                    break;
                case "warmap:boxplate":
                    value = int.Parse(Args.First());
                    BotLogic.WriteLine($"+ {value}x Armor Plate(s).");
                    break;
                case "warmap:boxpwoder":
                    value = int.Parse(Args.First());
                    BotLogic.WriteLine($"+ {value}x Gun Powder.");
                    break;
                case "warmap:boxpearls":
                    value = int.Parse(Args.First());
                    BotSession.sessionpearls += value;
                    BotLogic.WriteLine($"+ {value}x Pearl(s).");
                    break;
                case "warmap:boxadmiralpoints":
                    value = int.Parse(Args.First());
                    BotLogic.WriteLine($"+ {value}x Admiral Point(s).");
                    break;
                case "warmap:reward":
                    value = int.Parse(Args.First());
                    if (Args.Contains("labels!ActionItems!1"))
                    {
                        BotLogic.WriteLine($"+ {value}x Gun Powder.");
                    }
                    else
                    if (Args.Contains("labels!ActionItems!2"))
                    {
                        BotLogic.WriteLine($"+ {value}x Armor Plate(s).");
                    }
                    else
                    if (Args.Contains("labels!Currency!1"))
                    {
                        BotLogic.WriteLine($"+ {value}x Gold.");
                        BotSession.sessiongold += value;
                    }
                    else
                        if (Args.Contains("labels!Currency!2"))
                    {
                        BotLogic.WriteLine($"+ {value}x Pearls.");
                        BotSession.sessionpearls += value;
                    }
                    else
                        if (Args.Contains("labels!Currency!3"))
                    {
                        BotLogic.WriteLine($"+ {value}x Mojo(s).");
                        BotSession.sessionmojos += value;
                    }
                    else
                        if (Args.Contains("labels!Currency!4"))
                    {
                        BotLogic.WriteLine($"+ {value}x Crystal(s).");
                    }
                    else
                        if (Args.Contains("labels!Currency!8"))
                    {
                        BotLogic.WriteLine($"+ {value}x Cursed Soul(s).");
                    }
                    else
                        if (Args.Contains("labels!Currency!9"))
                    {
                        BotLogic.WriteLine($"+ {value}x Radiant Soul(s).");
                    }
                    else
                    {
                        BotLogic.WriteLine($"+ {value}x Unkown Item(s).");
                    }
                    break;
                case "warmap:boxhitpoints":
                    value = int.Parse(Args.First());
                    BotLogic.WriteLine($"+ {value}x HitPoint(s).");
                    break;
                case "warmap:boxtrap":
                    value = int.Parse(Args.First());
                    BotLogic.WriteLine($"- {value}x HitPoint(s).");
                    break;
                case "warmap:boxspeed":
                    BotLogic.WriteLine($"+ {value}x Speed Point(s).");
                    break;
                case "warmap:boxeuro":
                    BotLogic.WriteLine($"+ {value}x JackPot Dollar(s).");
                    break;
                case "warmap:boxep":
                    value = int.Parse(Args.First());
                    BotLogic.WriteLine($"+ {value}x XP.");
                    BotSession.sessionxp += value;
                    break;
                case "warmap:boxmojo":
                    value = int.Parse(Args.First());
                    BotLogic.WriteLine($"+ {value}x Mojo(s).");
                    BotSession.sessionmojos += value;
                    break;
                case "warmap:boxvoodoopoints":
                    value = int.Parse(Args.First());
                    BotLogic.WriteLine($"+ {value}x Voodoopoint(s).");
                    break;
                case "warmap:notreasurechestkey":
                    if (Client.entitys.ContainsKey(targetentityId))
                    {
                        var box = Client.entitys[targetentityId] as BoxInitMessage;
                        if (box.type == 5)
                        {
                            BotLogic.collectChests = false;
                        }
                        if (box.type == 6)
                        {
                            BotLogic.collectLionChests = false;
                        }
                        if (box.type == 15)
                        {
                            BotLogic.collectEventChests = false;
                        }
                        BotLogic.WriteLine(Message + (box.type == 5 ? " Chests " : box.type == 6 ? " Lion Chests " : " Event Chests "));
                        BotMethods.targetentityId = 0.0;
                        break;
                    } else
                    {
                        BotLogic.collectEventChests = false;
                        BotLogic.collectLionChests = false;
                        BotLogic.collectChests = false;
                        BotLogic.WriteLine("Unknown Chest Type! Disableing all Collectors!");
                    }
                    BotMethods.targetentityId = 0.0;
                    BotLogic.WriteLine(Message);
                    break;
                case "raidmap_behemoth_start":
                    Account.joining = true;
                    BotLogic.WriteLine("Joining Raid Map!");
                    break;
                case "warmap:actionitemused2":
                    Account.joining = true;
                    BotLogic.WriteLine ("Teleporting!");
                    break;
                case "warmap:actioncancelled":
                    if (Account.joining)
                    {
                        Account.joining = false;
                    }
                    BotLogic.WriteLine ("Join Canceld!");
                    break;
                case "warmap:actionitemDisabledBattle":
                    if (Account.joining)
                    {
                        Account.joining = false;
                        var point = MoveToCorner();
                        SeafightMethods.Move(point.X, point.Y);
                    }
                    break;
                case "warmap:actionitemDisabled":
                    if (Account.joining)
                    {
                        Account.joining = false;
                    }
                    break;
                case "vodoo_scroll_start":
                    Account.joining = true;
                    break;
                case "vodoo_scroll_forbidden":
                    if (Account.joining)
                    {
                        Account.joining = false;
                        //Account.BonusMaps.Remove(BotSettings.lastBM);
                    }
                    break;
                default:
                    BotLogic.WriteLine(Message);
                    break;
            }
        }

        public static int AmmoHandler(string Ammo)
        {
            if (Ammo.Contains("Chain"))
                return 1;
            if (Ammo.Contains("Stones"))
                return 2;
            if (Ammo.Contains("Splinter"))
                return 3;
            if (Ammo.Contains("Fireballs"))
                return 4;
            if (Ammo.Contains("Hollows"))
                return 5;
            if (Ammo.Contains("Skull"))
                return 6;
            if (Ammo.Contains("Upgraded Shrapnel"))
                return 150;
            if (Ammo.Contains("Upgraded"))
                return 160;
            if (Ammo.Contains("Reinforced"))
                return 103;
            if (Ammo.Contains("Explosive"))
                return 51;
            if (Ammo.Contains("Shrapnel"))
                return 5000;
            if (Ammo.Contains("Pumpkin"))
                return 102;
            if (Ammo.Contains("Flares"))
                return 101;
            if (Ammo.Contains("Soccer"))
                return 104;
            if (Ammo.Contains("Phosphor"))
                return 180;
            if (Ammo.Contains("Snow"))
                return 100;
            if (Ammo.Contains("Burning"))
                return 184;
            if (Ammo.Contains("Ice"))
                return 182;
            if (Ammo.Contains("Heart"))
                return 189;
            if (Ammo.Contains("Shell"))
                return 190;
            if (Ammo.Contains("Kraken"))
                return 183;
            if (Ammo.Contains("Confetti"))
                return 170;
            if (Ammo.Contains("Scrap"))
                return 185;
            if (Ammo.Contains("Doom"))
                return 187;
            if (Ammo.Contains("Souleater"))
                return 188;
            if (Ammo.Contains("Blast"))
                return 191;
            if (Ammo.Contains("Voodoo"))
                return 186;

            return 5;
        }

        public static int HarpoonHandler(string Harpoon)
        {
            if (Harpoon.Contains("Copper"))
            {
                return 18;
            }
            if (Harpoon.Contains("Lead"))
            {
                return 19;
            }
            if (Harpoon.Contains("Bronze"))
            {
                return 20;
            }
            if (Harpoon.Contains("Iron"))
            {
                return 75;
            }
            if (Harpoon.Contains("Steel"))
            {
                return 76;
            }
            return 20;
        }

        public static string MapHandler(int MapID)
        {
            switch (MapID)
            {
                case 89:
                    return "Civil War Arena";
                case 90:
                    return "Elemental Armageddon";
                case 91:
                    return "Snowball Fight Arena";
                case 92:
                    return "Ghost Gantril's Graveyard";
                case 93:
                    return "Soccer Arena";
                case 94:
                    return "Bloodfin's Pool";
                case 95:
                    return "Nidhugsheim";
                case 96:
                    return "Death Arena";
                case 97:
                    return "Ancient Hotbed";
                case 98:
                    return "Hildisvini's Stable";
                case 99:
                    return "Kraken's Lair";
                case 100:
                    return "Green Map";
                case 101:
                    return "Red Map";
                case 102:
                    return "Blue Map";
                case 103:
                    return "Snowflake Map";
                case 104:
                    return "Winter Map";
                case 105:
                    return "Yellow Map";
                case 106:
                    return "Virgo Map";
                case 107:
                    return "Capricornus Map";
                case 108:
                    return "Sagittarius Map";
                case 109:
                    return "First white Map";
                case 110:
                    return "Second white Map";
                case 111:
                    return "Third white Map";
                case 112:
                    return "Cancer Map";
                case 113:
                    return "Leo Map";
                case 114:
                    return "Libra Map";
                case 115:
                    return "Taurus Map";
                case 116:
                    return "Aquarius Map";
                case 117:
                    return "Pumpkin Map";
                case 300:
                    return "Behemoth";
                case 301:
                    return "Sunpirates";
                case 302:
                    return "Commonwealth Raidmap";
                case 407:
                    return "Gantril's Lair";
                case 408:
                    return "Ladon's Lair";
                case 409:
                    return "Ogygia's Lair";
                case 410:
                    return "Hildisvini's Ice Cave";
                case 411:
                    return "Kraken's Lagoon";
                case 412:
                    return "Evil Snowman's Lair";
                case 500:
                    return "Nimbus";
                case 501:
                    return "Safeheaven";
                case 502:
                    return "Safeheaven";
                case 503:
                    return "Safeheaven";
                case 504:
                    return "Safeheaven";
                case 505:
                    return "Safeheaven";
                case 506:
                    return "Safeheaven";
                default:
                    return "Unknown Map";
            }
        }
    }
}
