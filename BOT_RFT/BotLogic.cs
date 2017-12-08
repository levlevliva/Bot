using System;
using System.Drawing;
using System.Threading;
using SFCollector.Seafight;
using System.Collections.Generic;
using SFCollector.Seafight.Messages;
using System.Linq;

namespace SFCollector
{
    public class BotLogic
    {

        public static int repAtHp = 50;
        public static int repAtHpRaid = 50;
        public static int repAtHpBm = 50;
        public static int raidNpcAmmoId = 5;
        public static int raidBossAmmoId = 20;
        public static int bonusMapAmmoId = 5;
        public static bool running;
        public static bool collectBoxes;
        public static bool collectChests;
        public static bool collectEventChests;
        public static bool collectLionChests;
        public static bool collectMeat;
        public static bool collectCargoBoxes;
        public static bool shootMonsters;
        public static bool prioMonsters;
        public static bool autoJoinRaid;
        public static bool autoJoinBonusmap;
        public static bool shootRaidBoss;
        public static bool shootNPCs;
        public static bool onlyFullHPNpcs;
        public static bool prioNPCs;
        public static bool collectBoxesWhileAttacking;
        public static int attacking;
        public static int lastBonusmapId = -1;
        public static Thread _botThread;
        public static Dictionary<string, bool> entitys = new Dictionary<string, bool>();

        public static void StartBotThread()
        {
            try
            {
                BotLogic.running = false;
                if (BotLogic._botThread != null)
                {
                    BotLogic._botThread.Abort();
                    BotLogic._botThread.Join();
                }
                BotLogic.running = true;
                BotLogic._botThread = new Thread(new ThreadStart(Bot));
                BotLogic._botThread.IsBackground = true;
                BotLogic._botThread.Start();
            }
            catch (Exception)
            {
                Thread.Sleep(2000);
                StartBotThread();
            }
        }

        public static void StopBotThread()
        {
            try
            {
                BotLogic.running = false;
                if (BotLogic._botThread != null)
                {
                    BotLogic._botThread.Abort();
                    BotLogic._botThread.Join();
                }
            }
            catch
            {
                BotLogic.running = false;
            }
        }

        public static void Bot()
        {
            Random random = new Random();
            while (Account.gClass == null)
            {
                Thread.Sleep(1000);
            }
            while (BotLogic.running)
            {
                try
                {
                    bool flag = false;
                    if (Account.mapId == 500)
                    {
                        WriteLine("You have been Destroyed.");
                        SeafightMethods.Revive();
                        Thread.Sleep(1250);
                    }
                    if (Account.hitPoints < (Account.maxHitPoints * repAtHp / 100) && Account.mapId != 500)
                    {
                        var point = BotMethods.MoveToCorner();
                        var counter = 0;
                        SeafightMethods.Move(point.X, point.Y);
                        Thread.Sleep(200);
                        while (true)
                        {
                            if (Account.position.X == point.X && Account.position.Y == point.Y)
                            {
                                break;
                            }
                            if (BotMethods.CalculateDistance(point.X, point.Y) < 10)
                            {
                                break;
                            }
                            if (counter > 120)
                            {
                                break;
                            }
                            if (Account.hasRepairMaatLevel5 && !Account.repairing)
                            {
                                SeafightMethods.StartRepair();
                                Thread.Sleep(500);
                            }
                            if (Account.mapId == 500 || Account.hitPoints == 0)
                            {
                                break;
                            }
                            counter++;
                            Thread.Sleep(1000);
                        }
                        if (!Account.repairing && Account.mapId != 500)
                        {
                            SeafightMethods.StartRepair();
                        }
                        Thread.Sleep(500);
                        while (Account.hitPoints < Account.maxHitPoints && Account.mapId != 500)
                        {
                            if (!Account.repairing)
                                break;
                            if (Account.hitPoints >= (Account.maxHitPoints * repAtHp / 100) && Account.hasRepairMaatLevel5)
                                break;
                            if (Account.mapId == 500)
                                break;
                            Thread.Sleep(2500);
                        }
                        if (Account.repairing && !Account.hasRepairMaatLevel5 && Account.hitPoints < Account.maxHitPoints)
                        {
                            SeafightMethods.StopRepair();
                        }
                        Thread.Sleep(50);
                    }
                    if (!Account.onRaid && autoJoinRaid && Account.raidMedallion > 0 && Account.mapId != 500 && !Account.onBm)
                    {
                        BotMethods.JoinMapThread("Join Raid");
                        Thread.Sleep(100);
                    }
                    if (!Account.onBm && autoJoinBonusmap && Account.bonusMaps.Count > 0 && BotLogic.lastBonusmapId > -1 && Account.mapId != 500 && !Account.onRaid)
                    {
                        var mapId = Account.bonusMaps.FirstOrDefault().Key;
                        var map = Account.bonusMaps.ContainsKey(BotLogic.lastBonusmapId) ? Account.bonusMaps[BotLogic.lastBonusmapId] : Account.bonusMaps[mapId];
                        if (BotLogic.autoJoinBonusmap && BotLogic.lastBonusmapId > 1 && map != null && map.amount > 0)
                        {
                            mapId = map.mapId;
                        }
                        Thread.Sleep(250);
                        BotMethods.JoinMapThread("Join BM", mapId);
                        Thread.Sleep(500);
                        if (Account.onBm)
                        {
                            BotLogic.lastBonusmapId = Account.mapId;
                        }
                    }
                    if (Account.onRaid)
                    {
                        RaidThread();
                        flag = true;
                        Thread.Sleep(1500);
                    }
                    if (Account.onBm)
                    {
                        BmThread();
                        flag = true;
                        Thread.Sleep(1500);
                    }
                    if (!flag && shootMonsters && prioMonsters)
                    {
                        flag = MonsterThread();
                    }
                    if (!flag && shootNPCs && prioNPCs)
                    {
                        flag = NpcThread();
                    } 
                    if (!flag && (collectBoxes || collectChests || collectMeat || collectCargoBoxes || collectEventChests || collectLionChests))
                    {
                        var point = BotMethods.GetClosestBox();
                        if (point.position != null && (point.position.X != 0 || point.position.Y != 0))
                        {
                            var mispoint = new Point(point.position.X + random.Next(-2, 3), point.position.Y + random.Next(-3, 2));
                            var missed = new Random().Next(0, 2);
                            if (BotMethods.CalculateDistance(point.position.X, point.position.Y) >= new Random().Next(10, 25) && missed != 0)
                            {
                                SeafightMethods.Move(mispoint.X, mispoint.Y);
                                missed = new Random().Next(1, 3);
                            }
                            else
                            {
                                SeafightMethods.Move(point.position.X, point.position.Y);
                                missed = 0;
                            }                           
                            WriteLine($"Going to next {BotMethods.GetBoxType(point)}[{BotMethods.targetentityId}] - X: {point.position.X}|Y: " + point.position.Y);
                            Thread.Sleep(300);
                            DateTime dateTime_ = DateTime.Now;
                            TimeSpan timeSpan = (DateTime.Now - dateTime_);
                            double value = BotMethods.targetentityId;
                            int num = 0;
                            int repNum = 0;
                            while (!BotMethods.targetentityId.Equals(0.0) && timeSpan.TotalSeconds < 60 && running)
                            {
                                if (BotMethods.CalculateDistance(point.position.X, point.position.Y) <= 5 && missed > 0)
                                {
                                    SeafightMethods.Move(point.position.X + missed, point.position.Y - missed);
                                    missed--;
                                }
                                else if (missed <= 0)
                                {
                                    SeafightMethods.Move(point.position.X, point.position.Y);
                                }
                                if (Account.position.X == point.position.X && Account.position.Y == point.position.Y)
                                {
                                    num++;
                                    Thread.Sleep(100);
                                }
                                if (Account.route.Count < 1)
                                {
                                    SeafightMethods.Move(point.position.X, point.position.Y);
                                    Thread.Sleep(300);
                                }
                                if (!Client.entitys.ContainsKey(value) || num > 40)
                                {
                                    break;
                                }
                                if (Account.hitPoints < Account.maxHitPoints && Account.hasRepairMaatLevel5 && !Account.repairing && repNum < 3)
                                {
                                    SeafightMethods.StartRepair();
                                    repNum++;
                                    Thread.Sleep(300);
                                }
                                timeSpan = (DateTime.Now - dateTime_);
                                Thread.Sleep(10);
                            }
                            if (Client.entitys.ContainsKey(value) && timeSpan.TotalSeconds >= 59 || num > 40)
                            {
                                Client.entitys.Remove(value);
                            }
                            flag = true;
                        }
                    }
                    if (!flag && shootNPCs && !prioNPCs)
                    {
                        flag = NpcThread();
                    }
                    if (!flag && shootMonsters && prioMonsters)
                    {
                        flag = MonsterThread();
                    }
                    if (!flag)
                    {
                        var mPoint = BotMethods.MoveRandom();
                        var i = 3;
                        var distance = BotMethods.CalculateDistance(mPoint.X, mPoint.Y);
                        SeafightMethods.Move(mPoint.X, mPoint.Y);
                        WriteLine("Moving to next Position.");
                        Thread.Sleep(500);
                        while (i > 0)
                        {
                            if (!BotLogic.running)
                            {
                                break;
                            }
                            if (Account.mapId == 500)
                            {
                                break;
                            }
                            if (Account.hitPoints < (Account.maxHitPoints * repAtHp / 100))
                            {
                                break;
                            }
                            if (collectBoxes || collectChests || collectMeat || collectCargoBoxes || collectEventChests || collectLionChests)
                            {
                                var point = BotMethods.GetClosestBox();
                                if (point != null && point.position != null && (point.position.X != 0 && point.position.Y != 0))
                                {
                                    break;
                                }
                            }                                
                            if (shootMonsters)
                            {
                                var monster = BotMethods.GetClosestMonster();
                                if (monster != null && monster.position != null && !monster.entityId.Equals(0.0) && monster.position.X != 0 && monster.hitpoints > 0 && monster.entityId != BotMethods.lastEntityId)
                                {
                                    BotMethods.lastEntityId = monster.entityId;
                                    break;
                                }
                            }
                            if (shootNPCs)
                            {
                                var npc = BotMethods.GetClosestNPC();
                                if (npc != null && npc.position != null && !npc.entityId.Equals(0.0) && npc.position.X != 0 && npc.pointsCurrent.HitPoints > 0 && npc.entityId != BotMethods.lastEntityId)
                                {
                                    BotMethods.lastEntityId = npc.entityId;
                                    break;
                                }
                            }
                            if (BotMethods.CalculateDistance(mPoint.X, mPoint.Y) == distance)
                            {
                                distance = BotMethods.CalculateDistance(mPoint.X, mPoint.Y);
                                i--;
                            }
                            if (BotMethods.CalculateDistance(mPoint.X, mPoint.Y) <= random.Next(1, 12))
                            {
                                mPoint = BotMethods.MoveRandom();
                                SeafightMethods.Move(mPoint.X, mPoint.Y);
                                Thread.Sleep(500);
                            }
                            if (Account.hitPoints < Account.maxHitPoints && Account.hasRepairMaatLevel5 && !Account.repairing)
                            {
                                SeafightMethods.StartRepair();
                                Thread.Sleep(250);
                            }
                            Thread.Sleep(1000);
                        }
                    }
                }
                catch (Exception)
                {
                }
            }
        }

        private static bool BmShipThread()
        {
            var distance = 0.0;
            var range = ((Account.canonRange >= 10) ? (Account.canonRange - 5) : Account.canonRange);
            var targetPoint = default(Point);
            var movecounter = 0;
            var ammo = BotLogic.bonusMapAmmoId;
            var ship = BotMethods.GetClosestShip();
            var random = new Random();
            if (ship.position.X == 0)
            {
                return false;
            }
            if (!Client.entitys.ContainsKey(BotMethods.targetentityId))
            {
                if (ship.entityId.Equals(0.0) && attacking < 3)
                {
                    ship.entityId = Client.entitys.Keys.OfType<ShipInitMessage>().FirstOrDefault().entityId;
                    attacking++;
                }
                else if (attacking >= 3)
                {
                    BotSession.lostConnection = true;
                }
                if (!Client.entitys.ContainsKey(ship.entityId))
                {
                    return false;
                }
            }
            BotMethods.targetentityId = ship.entityId;
            //BotMethods.ActivatePowderAndPlates(BotSettings.usePowderBM, BotSettings.useArmorBM);
            distance = BotMethods.CalculateDistance(ship.position.X, ship.position.Y);
            range = ((Account.canonRange >= 10) ? (Account.canonRange - 5) : Account.canonRange);
            if (distance > range)
            {
                SeafightMethods.Move(ship.position.X, ship.position.Y);
            }
            BotLogic.WriteLine("Going to next " + ship.name);
            attacking = 0;
            while (attacking < 150 && distance > range && Client.entitys.ContainsKey(ship.entityId) && !BotMethods.targetentityId.Equals(0.0))
            {
                if (Account.route.Count <= 1)
                {
                    SeafightMethods.Move(ship.position.X, ship.position.Y);
                }
                distance = BotMethods.CalculateDistance(ship.position);
                Thread.Sleep(500);
                attacking++;
            }
            if (attacking >= 150)
            {
                if (Client.entitys.ContainsKey(ship.entityId))
                {
                    Client.entitys.Remove(ship.entityId);
                }
                return false;
            }
            attacking = 0;
            if (Account.route.Count > 0)
            {
                SeafightMethods.Move(Account.position.X + random.Next(-1, 2), Account.position.Y + random.Next(-2, 1));
                Thread.Sleep(random.Next(450, 650));
            }
            SeafightMethods.AttackShip(ship.entityId, ship.projectId, ammo);
            BotLogic.WriteLine("Attacking " + ship.name);
            Thread.Sleep(random.Next(100, 275));
            double entityId = BotMethods.targetentityId;
            BotLogic.attacking = 15;
            while (!BotMethods.targetentityId.Equals(0.0) && Client.entitys.ContainsKey(ship.entityId) && Account.GetCurrentHpPercent > BotLogic.repAtHpBm && attacking > 0)
            {
                ship = BotMethods.GetClosestShip();
                if (ship.position.X == 0)
                {
                    break;
                }
                distance = BotMethods.CalculateDistance(ship.position);
                if (distance >= Account.canonRange && (double)attacking < 14.0 - ((Account.reloadTime > 0.0 ? Account.reloadTime / 1000.0 : 5.0)))
                {
                    BotMethods.targetentityId = 0.0;
                    break;
                }
                if (!BotMethods.targetentityId.Equals(entityId) && !BotMethods.targetentityId.Equals(0.0))
                {
                    entityId = ship.entityId;
                    Thread.Sleep(random.Next(350, 650));
                    SeafightMethods.AttackShip(ship.entityId, ship.projectId, ammo);
                    Thread.Sleep(random.Next(249, 349));
                }
                    if (distance < range)
                    {
                        var num5 = 1850;
                        var num6 = 1950;
                        if (range >= 13)
                        {
                            if (distance > range - 5)
                            {
                                num5 = 200;
                                num6 = 350;
                            }
                            if (distance > range - 10)
                            {
                                num5 = 400;
                                num6 = 650;
                            }
                        }
                        Point point = BotMethods.GetQuarter(true);
                        var num7 = point.X;
                        distance = BotMethods.CalculateDistance(ship.position);
                        var num8 = (distance > range ? 0.0 : (range - distance)) - 1;
                        if (!num8.Equals(0.0))
                        {
                            if (num7 <= 298)
                            {
                                if (num7 != 4)
                                {
                                    if (num7 == 298)
                                    {
                                        if ((double)Account.position.X > 288.0 && (double)Account.position.Y > -283.0)
                                        {
                                            targetPoint = new Point(Account.position.X - (int)num8 - random.Next(-3, 4), Account.position.Y - (int)num8);
                                        SeafightMethods.Move(targetPoint.X, targetPoint.Y);
                                            Thread.Sleep(random.Next(num5, num6));
                                        }
                                        else
                                        {
                                            targetPoint = new Point(Account.position.X - (int)num8, Account.position.Y + (int)num8 + random.Next(-3, 4));
                                        SeafightMethods.Move(targetPoint.X, targetPoint.Y);
                                            Thread.Sleep(random.Next(num5, num6));
                                        }
                                    }
                                }
                                else if ((double)Account.position.X > 14.0 && (double)Account.position.Y < 9.0)
                                {
                                    targetPoint = new Point(Account.position.X - (int)num8, Account.position.Y + (int)num8 + random.Next(-3, 4));
                                SeafightMethods.Move(targetPoint.X, targetPoint.Y);
                                    Thread.Sleep(random.Next(num5, num6));
                                }
                                else
                                {
                                    targetPoint = new Point(Account.position.X + (int)num8 + random.Next(-3, 4), Account.position.Y + (int)num8);
                                SeafightMethods.Move(targetPoint.X, targetPoint.Y);
                                    Thread.Sleep(random.Next(num5, num6));
                                }
                            }
                            else if (num7 != 300)
                            {
                                if (num7 == 594)
                                {
                                    if ((double)Account.position.X < 584.0 && (double)Account.position.Y > -8.0)
                                    {
                                        targetPoint = new Point(Account.position.X + (int)num8, Account.position.Y - (int)num8 - random.Next(-3, 4));
                                    SeafightMethods.Move(targetPoint.X, targetPoint.Y);
                                        Thread.Sleep(random.Next(num5, num6));
                                    }
                                    else
                                    {
                                        targetPoint = new Point(Account.position.X - (int)num8 - random.Next(-3, 4), Account.position.Y - (int)num8);
                                    SeafightMethods.Move(targetPoint.X, targetPoint.Y);
                                        Thread.Sleep(random.Next(num5, num6));
                                    }
                                }
                            }
                            else if ((double)Account.position.X < 310.0 && (double)Account.position.Y < 285.0)
                            {
                                targetPoint = new Point(Account.position.X + (int)num8 + random.Next(-3, 4), Account.position.Y + (int)num8);
                            SeafightMethods.Move(targetPoint.X, targetPoint.Y);
                                Thread.Sleep(random.Next(num5, num6));
                            }
                            else
                            {
                                targetPoint = new Point(Account.position.X + (int)num8, Account.position.Y - (int)num8 - random.Next(-3, 4));
                            SeafightMethods.Move(targetPoint.X, targetPoint.Y);
                                Thread.Sleep(random.Next(num5, num6));
                            }
                            movecounter++;
                        }
                    }
                    if (Account.route.Count > 0)
                    {
                        movecounter = 0;
                    }
                    else if (movecounter > 3 && Account.route[Account.route.Count].X != targetPoint.X && Account.route[Account.route.Count].Y != targetPoint.Y)
                    {
                        var num7 = BotMethods.GetQuarter(true).X;
                        if (num7 <= 298)
                        {
                            if (num7 != 4)
                            {
                                if (num7 == 298)
                                {
                                    if ((double)Account.position.X > 288.0 && (double)Account.position.Y > -283.0)
                                    {
                                    SeafightMethods.Move(BotMethods.corner_3.X, BotMethods.corner_3.Y);
                                    }
                                    else
                                    {
                                    SeafightMethods.Move(BotMethods.corner_1.X, BotMethods.corner_1.Y);
                                    }
                                }
                            }
                            else if ((double)Account.position.X > 14.0 && (double)Account.position.Y < 9.0)
                            {
                            SeafightMethods.Move(BotMethods.corner_1.X, BotMethods.corner_1.Y);
                            }
                            else
                            {
                            SeafightMethods.Move(BotMethods.corner_2.X, BotMethods.corner_2.Y);
                            }
                        }
                        else if (num7 != 300)
                        {
                            if (num7 == 594)
                            {
                                if ((double)Account.position.X < 584.0 && (double)Account.position.Y > -8.0)
                                {
                                SeafightMethods.Move(BotMethods.corner_4.X, BotMethods.corner_4.Y);
                                }
                                else
                                {
                                SeafightMethods.Move(BotMethods.corner_3.X, BotMethods.corner_3.Y);
                                }
                            }
                        }
                        else if ((double)Account.position.X < 310.0 && (double)Account.position.Y < 285.0)
                        {
                            SeafightMethods.Move(BotMethods.corner_2.X, BotMethods.corner_2.Y);
                        }
                        else
                        {
                        SeafightMethods.Move(BotMethods.corner_4.X, BotMethods.corner_4.Y);
                        }
                        Thread.Sleep(random.Next(1750, 2550));
                        SeafightMethods.Move(Account.position.X - random.Next(-2, 2), Account.position.Y + random.Next(-2, 2));
                        movecounter = 0;
                    }
                attacking--;
                Thread.Sleep(1000);
            }
            attacking = 0;
            return true;
        }

        public static bool BmThread()
        {
            BotLogic.WriteLine("Starting Bonus Map Bot...");
            while (BotLogic.running)
            {
                try
                {
                    if (Account.onBm)
                    {
                        if (Account.hitPoints < (Account.maxHitPoints * repAtHpBm / 100) && Account.mapId != 500)
                        {
                            var point = BotMethods.MoveToFarestCorner();
                            var counter = 0;
                            SeafightMethods.Move(point.X, point.Y);
                            BotLogic.WriteLine("Going to repair.");
                            Thread.Sleep(200);
                            while (true)
                            {
                                if (Account.position.X == point.X && Account.position.Y == point.Y)
                                {
                                    break;
                                }
                                if (BotMethods.CalculateDistance(point.X, point.Y) < 10)
                                {
                                    break;
                                }
                                if (counter > 120)
                                {
                                    break;
                                }
                                if (Account.hasRepairMaatLevel5 && !Account.repairing && BotMethods.CalculateDistance(BotMethods.GetClosestShip().position) > (Account.canonRange + 6))
                                {
                                    SeafightMethods.StartRepair();
                                    Thread.Sleep(500);
                                }
                                if (Account.mapId == 500 || Account.hitPoints == 0)
                                {
                                    break;
                                }
                                counter++;
                                Thread.Sleep(1000);
                            }
                            if (!Account.repairing && Account.mapId != 500)
                            {
                                SeafightMethods.StartRepair();
                            }
                            Thread.Sleep(500);
                            while (Account.hitPoints < Account.maxHitPoints && Account.mapId != 500)
                            {
                                if (!Account.repairing)
                                    break;
                                if (Account.hitPoints >= (Account.maxHitPoints * repAtHp / 100) && Account.hasRepairMaatLevel5)
                                    break;
                                if (Account.mapId == 500)
                                    break;
                                Thread.Sleep(2500);
                            }
                            if (Account.repairing && !Account.hasRepairMaatLevel5 && Account.hitPoints < Account.maxHitPoints)
                            {
                                SeafightMethods.StopRepair();
                            }
                            Thread.Sleep(50);
                        }
                        BmShipThread();
                    }
                    else
                    {
                        Thread.Sleep(1500);
                    }
                    if (!Account.onBm && BotLogic.autoJoinBonusmap && BotLogic.lastBonusmapId > 1 && Account.bonusMaps.Count > 0 && !Account.onRaid)
                    {
                        var mapId = Account.bonusMaps.FirstOrDefault().Key;
                        var map = Account.bonusMaps.ContainsKey(BotLogic.lastBonusmapId) ? Account.bonusMaps[BotLogic.lastBonusmapId] : Account.bonusMaps[mapId];
                        if (BotLogic.autoJoinBonusmap && BotLogic.lastBonusmapId > 1 && map != null && map.amount > 0)
                        {
                            mapId = map.mapId;
                        }
                        Thread.Sleep(250);
                        BotMethods.JoinMapThread("Join BM", mapId);
                        Thread.Sleep(500);
                        if (Account.onBm)
                        {
                            BotLogic.lastBonusmapId = Account.mapId;
                        }
                    }
                    Thread.Sleep(300);
                }
                catch (Exception)
                {
                }
            }
            return true;
        }

        private static bool IsValidBoard(ShipInitMessage ship)
        {
            try
            {
                if (ship != null)
                {
                    if (ship.useBoard == true)
                    {
                        if (ship.pointsCurrent.HitPoints <= (ship.pointsMax.HitPoints * Account.boardHpLimit / 100))
                        {
                            if (ship.boardinAttackValue < Account.boardingAttackValue)
                                return true;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                BotLogic.WriteLine(ex.ToString());
            }
            return false;
        }

        public static bool NpcThread()
        {
            BotMethods.targetentityId = 0.0;
            var ship = BotMethods.GetClosestNPC();
            var random = new Random();
            if (ship.position.X == 0 || ship.entityId.Equals(0.0))
            {
                BotMethods.lastEntityId = ship.entityId;
                return false;
            }
            if (!Client.entitys.ContainsKey(ship.entityId))
            {
                BotMethods.lastEntityId = ship.entityId;
                return false;
            }
            BotLogic.WriteLine("Going to next " + ship.name + " [" + ship.entityId + "]" );
            BotMethods.targetentityId = ship.entityId;
            attacking = 0;
            Point point = new Point(0, 0);
            DateTime dateTime_ = DateTime.Now;
            TimeSpan timeSpan = new TimeSpan(0, 0, 60);
            int distance = (int)BotMethods.CalculateDistance(ship.position);
            int range = (int)((Account.canonRange >= 10) ? (Account.canonRange - 5) : Account.canonRange);
            if (distance > range)
            {
                if (ship.nameId != 1403)
                {
                    point = BotMethods.MoveToNPC(ship);
                }
                else
                {
                    point = new Point(ship.position.X + random.Next(-4, 4), ship.position.Y - range + random.Next(-4, 4));
                    SeafightMethods.Move(point.X, point.Y);
                }
                Thread.Sleep(500);
            }
            BotMethods.ActivatePowderAndPlates(ship.usePowder, ship.usePlates);
            while (BotLogic.running && distance > range && Client.entitys.ContainsKey(ship.entityId) && timeSpan.TotalSeconds < 60.0)
            {
                Thread.Sleep(100);
                distance = (int)BotMethods.CalculateDistance(ship.position);
                if (Account.route[Account.route.Count].X != point.X && Account.route[Account.route.Count].Y != point.Y)
                {
                    SeafightMethods.Move(point.X, point.Y);
                    Thread.Sleep(random.Next(200, 400));
                }
                if (Account.route.Count < 1 && distance > range)
                {
                    point = BotMethods.MoveToNPC(ship);
                    Thread.Sleep(random.Next(200, 400));
                }
                timeSpan = DateTime.Now - dateTime_;
                attacking++;
                if (attacking > 600)
                {
                    BotMethods.lastEntityId = ship.entityId;
                    return false;
                }
            }
            if (!Client.entitys.ContainsKey(ship.entityId))
            {
                BotMethods.lastEntityId = ship.entityId;
                return false;
            }
            if (Account.route.Count > 1 && BotMethods.CalculateDistance(point.X, point.Y, ship.position.X, ship.position.Y) < 3)
            {
                SeafightMethods.Move(Account.position.X++, Account.position.Y--);
                Thread.Sleep(random.Next(125, 375));
            }
            BotLogic.WriteLine("Attacking " + ship.name);
            SeafightMethods.AttackShip(BotMethods.targetentityId, ship.projectId, ship.ammoId);
            var bCounter = 0.0;
            var entityId = BotMethods.targetentityId;
            attacking = 15;
            while (BotLogic.running && !BotMethods.targetentityId.Equals(0.0) && Account.GetCurrentHpPercent >= 11 && Account.mapId != 500 && attacking > 0)
            {
                distance = (int)BotMethods.CalculateDistance(ship.position);
                if (distance > Account.canonRange - ((Account.canonRange >= 30) ? 6 : 4) && ship.route.Count > 0)
                {
                    SeafightMethods.Move(ship.position.X, ship.position.Y);
                    Thread.Sleep(random.Next(1250, 1750));
                    SeafightMethods.Move(Account.position.X, Account.position.Y);
                }
                if (distance <= 3)
                {
                    SeafightMethods.Move(ship.position.X + random.Next(6, 18), ship.position.Y + random.Next(4, 10));
                    Thread.Sleep(random.Next(250, 375));
                }
                if (IsValidBoard(ship))
                {
                    if (!ship.boarded && bCounter < 3)
                    {
                        var _position = new PositionStub(Account.position.X + random.Next(-4, 4), Account.position.Y + random.Next(-4, 4));
                        if (distance >= Account.boardingRange)
                        {
                            SeafightMethods.Move(ship.position.X, ship.position.Y);
                            Thread.Sleep(random.Next(500, 1050));
                        }
                        if (distance < Account.boardingRange)
                        {
                            SeafightMethods.BoardShip(BotMethods.targetentityId, ship.projectId);
                            bCounter++;
                            BotLogic.WriteLine("Boarding " + ship.name);
                            Thread.Sleep(random.Next(1120, 1820));
                            if (ship.boarded)
                            {
                                Thread.Sleep(random.Next(1250, 2225));
                                bCounter += 3.5;
                                SeafightMethods.Move(_position.X, _position.Y);
                            }
                        }
                    }
                }
                if (BotLogic.collectBoxesWhileAttacking && ((double)ship.pointsCurrent.HitPoints / (double)ship.pointsMax.HitPoints * 100.0) >= 5)
                {
                    try
                    {
                        var _point = BotMethods.GetClosestBoxInRange(new Point(ship.position.X, ship.position.Y), (int)(Account.canonRange - 2));
                        if (_point.position.X != 0 && _point.position.Y != 0)
                        {
                            IL_SEARCH:
                            var num = 0;
                            var value = _point.entityId;
                            while (!BotMethods.targetentityId.Equals(0.0) && _point.position.X != 0 && BotLogic.running && Client.entitys.ContainsKey(value) && BotLogic.running)
                            {
                                if ((Account.route[Account.route.Count].X != _point.position.X || Account.route[Account.route.Count].Y != _point.position.Y))
                                {
                                    SeafightMethods.Move(_point.position.X, _point.position.Y);
                                    Thread.Sleep(random.Next(250, 450));
                                }
                                if (Account.position.X == _point.position.X && Account.position.Y == _point.position.Y || Account.route.Count <= 2)
                                {
                                    num++;
                                    Thread.Sleep(100);
                                }
                                if (num > 40)
                                {
                                    break;
                                }
                                timeSpan = (DateTime.Now - dateTime_);
                                Thread.Sleep(10);
                            }
                            if (Account.position.X == _point.position.X && Account.position.Y == _point.position.Y || !Client.entitys.ContainsKey(value))
                            {
                                BotSession.sessionboxes++;
                            }
                            if ((_point = BotMethods.GetClosestBoxInRange(new Point(ship.position.X, ship.position.Y), (int)(Account.canonRange - 2))).position.X != 0 && !BotMethods.targetentityId.Equals(0.0) && BotLogic.running && Client.entitys.ContainsKey(ship.entityId))
                            {
                                goto IL_SEARCH;
                            }
                        }
                    }catch (Exception)
                    {
                    }
                }
                attacking--;
                Thread.Sleep(1000);
            }
            if (!Client.entitys.ContainsKey(entityId) || BotMethods.targetentityId.Equals(0.0))
            {
                BotSession.sessionpcs++;
            }
            return true;
        }

        private static bool MonsterThread()
        {
            var monster = BotMethods.GetClosestMonster();
            if (!monster.entityId.Equals(0.0) && monster.position.X != 0)
            {
                BotMethods.targetentityId = monster.entityId;
                BotLogic.WriteLine($"Going to next {monster.name} [" + monster.entityId + "]");
                int distance = (int)BotMethods.CalculateDistance(monster.position);
                int _counter = 120;
                int currentHp = monster.hitpoints;
                var point = new Point(0, 0);
                if (distance > 10)
                {
                    point = new Point(monster.position.X, monster.position.Y);
                    SeafightMethods.Move(point.X, point.Y);
                    Thread.Sleep(500);
                }
                while (BotLogic.running && _counter > 0 && distance > 10)
                {
                    if (Account.route.Count < 2 && distance >= 12)
                    {
                        point = new Point(monster.position.X, monster.position.Y);
                        SeafightMethods.Move(point.X, point.Y);
                        Thread.Sleep(new Random().Next(200, 400));
                    }
                    if (BotMethods.CalculateDistance(point.X, point.Y) < 6 || Account.route.Count < 5)
                    {
                        SeafightMethods.Move(Account.position.X++, Account.position.Y--);
                        break;
                    }
                    distance = (int)BotMethods.CalculateDistance(monster.position);
                    _counter--;
                    Thread.Sleep(500);
                }
                if (_counter <= 0)
                {
                    if (Client.entitys.ContainsKey(BotMethods.targetentityId))
                    {
                        Client.entitys.Remove(BotMethods.targetentityId);
                    }
                    BotMethods.targetentityId = 0.0;
                    goto IL_END;
                }

                BotLogic.WriteLine("Attacking " + monster.name);
                SeafightMethods.AttackMonster(BotMethods.targetentityId, monster.projectId, monster.harpoonId);
                BotLogic.attacking = 15;
                while (BotLogic.running && !BotMethods.targetentityId.Equals(0.0) && BotLogic.attacking > 0 && Account.mapId != 500)
                {
                    if (BotMethods.CalculateDistance(monster.position) <= 3)
                    {
                        SeafightMethods.Move(monster.position.X + new Random().Next(2, 5), monster.position.Y + new Random().Next(1, 3));
                    }
                    BotLogic.attacking--;
                    Thread.Sleep(1000);
                }
                if (!Client.entitys.ContainsKey(monster.entityId) || BotMethods.targetentityId.Equals(0.0))
                {
                    BotSession.sessionmonsters++;
                }
                IL_END:
                return true;
            }
            return false;
        }

        private static bool RaidShipsThread()
        {
            DateTime usedBloodlustTime = DateTime.Now;
            var ship = BotMethods.GetClosestShipRaid();
            if (BotMethods.RaidBossExists() && !BotMethods.IsBoss(ship) && BotLogic.shootRaidBoss)
            {
                ship = BotMethods.GetRaidBoss();
            }
            if (ship.position.X == 0 || ship.entityId.Equals(0.0))
            {
                BotMethods.lastEntityId = ship.entityId;
                return false;
            }
            if (!Client.entitys.ContainsKey(ship.entityId))
            {
                BotMethods.lastEntityId = ship.entityId;
                return false;
            }
            if (!BotMethods.IsBoss(ship))
            {
                //Bot.ActivatePowderAndPlates(BotSettings.usePowderRaid, BotSettings.useArmorRaid);
            }
            if (BotMethods.IsBoss(ship))
            {
                //Bot.ActivatePowderAndPlates(BotSettings.usePowderRaidBoss, BotSettings.useArmorRaidBoss);
            }
            BotMethods.targetentityId = ship.entityId;
            double entityId = ship.entityId;
            attacking = 0;
            var point = default(Point);
            WriteLine("Going to next " + ship.name + " [" + ship.entityId + "]");
            if (BotMethods.CalculateDistance(ship.position) > (Account.canonRange - 5))
            {
                point = new Point(ship.position.X, ship.position.Y);
                SeafightMethods.Move(point.X, point.Y);
                Thread.Sleep(400);
            }
            while (attacking < 75 && BotMethods.CalculateDistance(ship.position.X, ship.position.Y) >= Account.canonRange - 5)
            {
                if (Account.route.Count <= 1)
                {
                    point = new Point(ship.position.X, ship.position.Y);
                    SeafightMethods.Move(point.X, point.Y);
                }
                if (!Client.entitys.ContainsKey(ship.entityId))
                {
                    break;
                }
                if (BotMethods.CalculateDistance(point.X, point.Y) < (Account.canonRange - 6))
                {
                    SeafightMethods.Move(Account.position.X, Account.position.Y);
                    break;
                }
                attacking++;
                Thread.Sleep(1000);
            }
            if (!Client.entitys.ContainsKey(ship.entityId))
            {
                BotMethods.lastEntityId = ship.entityId;
                return false;
            }
            if (!BotMethods.IsBoss(ship))
            {
                SeafightMethods.AttackShip(ship.entityId, ship.projectId, BotLogic.raidNpcAmmoId);
            }
            else if (BotMethods.IsBoss(ship))
            {
                SeafightMethods.AttackShip(ship.entityId, ship.projectId, BotLogic.raidBossAmmoId);
            }
            BotLogic.WriteLine("Attacking " + ship.name);
            Thread.Sleep(330);
            if (Account.route.Count > 3)
            {
                SeafightMethods.Move(Account.position.X, Account.position.Y);
            }
            attacking = 15;
            while (Client.entitys.ContainsKey(ship.entityId) && !BotMethods.targetentityId.Equals(0.0) && BotLogic.running && Account.GetCurrentHpPercent >= 15 && attacking > 0 && Account.mapId != 500)
            {
                if (BotLogic.shootRaidBoss && BotMethods.RaidBossExists() && !BotMethods.IsBoss(ship))
                {
                    WriteLine("Raid Boss spotted.");
                    Thread.Sleep(400);
                    break;
                }
                if (BotMethods.CalculateDistance(ship.position.X, ship.position.Y) >= Account.canonRange)
                {
                    SeafightMethods.Move(ship.position.X, ship.position.Y);
                    Thread.Sleep(1700);
                    SeafightMethods.Move(Account.position.X + 2, Account.position.Y + 1);
                }
                if (BotMethods.CalculateDistance(ship.position.X, ship.position.Y) <= 3)
                {
                    SeafightMethods.Move(ship.position.X + 12, ship.position.Y + 6);
                }
                Thread.Sleep(1000);
                attacking--;
            }
            if (!Client.entitys.ContainsKey(ship.entityId) || BotMethods.targetentityId.Equals(0.0))
            {
                BotMethods.targetentityId = 0.0;
                BotSession.sessionpcs++;
            }
            return true;
        }

        public static bool RaidThread()
        {
            var random = new Random();
            WriteLine("Starting Raid Bot...");
            while (BotLogic.running)
            {
                try
                {
                    bool flag = false;
                    if (Account.onRaid)
                    {
                        if (Account.hitPoints < (Account.maxHitPoints * repAtHpRaid / 100) && Account.mapId != 500)
                        {
                            var point = BotMethods.MoveToCorner();
                            var counter = 0;
                            SeafightMethods.Move(point.X, point.Y);
                            Thread.Sleep(200);
                            while (BotLogic.running)
                            {
                                if (Account.position.X == point.X && Account.position.Y == point.Y)
                                {
                                    break;
                                }
                                if (BotMethods.CalculateDistance(point.X, point.Y) < 10)
                                {
                                    break;
                                }
                                if (counter > 120)
                                {
                                    break;
                                }
                                if (Account.hasRepairMaatLevel5 && !Account.repairing)
                                {
                                    SeafightMethods.StartRepair();
                                    Thread.Sleep(500);
                                }
                                if (Account.mapId == 500 || Account.hitPoints == 0)
                                {
                                    break;
                                }
                                counter++;
                                Thread.Sleep(1000);
                            }
                            if (!Account.repairing && Account.mapId != 500)
                            {
                                SeafightMethods.StartRepair();
                            }
                            Thread.Sleep(500);
                            while (Account.hitPoints < Account.maxHitPoints && Account.mapId != 500)
                            {
                                if (!Account.repairing)
                                    break;
                                if (Account.hitPoints >= (Account.maxHitPoints * repAtHpRaid / 100) && Account.hasRepairMaatLevel5)
                                    break;
                                if (Account.mapId == 500)
                                    break;
                                Thread.Sleep(2500);
                            }
                            if (Account.repairing && !Account.hasRepairMaatLevel5 && Account.hitPoints < Account.maxHitPoints)
                            {
                                SeafightMethods.StopRepair();
                            }
                            Thread.Sleep(50);
                        }
                        if (!flag)
                        {
                            flag = RaidShipsThread();
                        }
                        if (!flag)
                        {
                            var mPoint = BotMethods.MoveRandom();
                            var i = 3;
                            var distance = BotMethods.CalculateDistance(mPoint.X, mPoint.Y);
                            SeafightMethods.Move(mPoint.X, mPoint.Y);
                            WriteLine("Moving to next Position.");
                            Thread.Sleep(500);
                            while (i > 0)
                            {
                                if (!BotLogic.running)
                                {
                                    break;
                                }
                                if (Account.mapId == 500)
                                {
                                    break;
                                }
                                if (!Account.onRaid)
                                {
                                    break;
                                }
                                if (Account.hitPoints < (Account.maxHitPoints * repAtHp / 100))
                                {
                                    break;
                                }
                                var point = BotMethods.GetClosestShipRaid();
                                if (point.entityId != 0.0 && point.position.X != 0 && point.pointsCurrent.HitPoints > 0 && point.entityId != BotMethods.lastEntityId)
                                {
                                    BotMethods.lastEntityId = point.entityId;
                                    break;
                                }
                                if (BotMethods.CalculateDistance(mPoint.X, mPoint.Y) == distance)
                                {
                                    distance = BotMethods.CalculateDistance(mPoint.X, mPoint.Y);
                                    i--;
                                }
                                if (BotMethods.CalculateDistance(mPoint.X, mPoint.Y) <= random.Next(1, 12))
                                {
                                    mPoint = BotMethods.MoveRandom();
                                    SeafightMethods.Move(mPoint.X, mPoint.Y);
                                    Thread.Sleep(500);
                                }
                                if (Account.hitPoints < Account.maxHitPoints && Account.hasRepairMaatLevel5 && !Account.repairing)
                                {
                                    SeafightMethods.StartRepair();
                                    Thread.Sleep(250);
                                }
                                Thread.Sleep(1000);
                            }
                        }
                        Thread.Sleep(100);
                        if (!Account.onRaid)
                        {
                            Thread.Sleep(500);
                            if (!Account.onRaid && BotLogic.autoJoinRaid)
                            {
                                Thread.Sleep(500);
                                BotMethods.JoinMapThread("Join Raid");
                            }
                            if (!Account.onRaid)
                            {
                                return true;
                            }
                        }
                    }
                }
                catch (Exception)
                {
                }
            }
            return true;
        }

        public static void WriteLine(string message)
        {
            try
            {
                Form1.form1.delegateWriter.Invoke(message);
            }
            catch (Exception)
            {

            }

        }

        public static void UpdateBonusmapList()
        {
            try
            {
                Form1.form1.bonusmap.Invoke();
            } catch (Exception)
            {

            }
        }
    }
}