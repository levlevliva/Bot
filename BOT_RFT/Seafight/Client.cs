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
    public static class Client
    {
        public static bool loggedin = false;
        public static DateTime lastPacket;
        public static Dictionary<double, Message> entitys { get; set; } = new Dictionary<double, Message>();
        public static Dictionary<double, List<PositionStub>> EntityMovementList = new Dictionary<double, List<PositionStub>>();
        public static Dictionary<double, int> attackRetryList = new Dictionary<double, int>();

        public static void Read(byte[] buffer)
        {
            if (buffer.Length != 0)
            {
                Client.lastPacket = DateTime.Now;
            }
            Reader reader = new Reader(0, buffer);
            while (reader.index < buffer.Length - 2)
            {
                try
                {
                    var length = reader.ReadShort();
                    if (length > 0)
                    {
                        var id = reader.ReadShort();
                        if (id == new ClientInitMessage().getID())
                        {
                            var clientInit = new ClientInitMessage();
                            clientInit.Read(reader);
                            Account.mapId = clientInit.mapInfo.MapID;
                            Account.map = clientInit.mapInfo.Map;
                            BotLogic.WriteLine("Client found.");
                            loggedin = true;
                        }
                        else
                            if (id == new UserInitMessage().getID())
                        {
                            var userUpdate = new UserInitMessage();
                            userUpdate.Read(reader);
                            Account.hasRepairMaatLevel5 = (bool)(userUpdate.int_7 == 2);
                            Account.hitPoints = userUpdate.currentHealth.HitPoints;
                            Account.voodooPoints = userUpdate.currentHealth.VoodooPoints;
                            Account.position = userUpdate.position;
                            Account.username = userUpdate.username;
                            Account.projectId = userUpdate.projectId;
                            Account.repairing = userUpdate.isRepairing;
                            Account.gClass = userUpdate;
                        }
                        else
                            if (id == new BonusMapMessage().getID())
                        {
                            var bonusMaps = new BonusMapMessage();
                            bonusMaps.Read(reader);
                            foreach (var bm in bonusMaps.maps)
                            {
                                var mapName = BotMethods.MapHandler(bm.mapId);
                                bm.mapName = mapName;
                                if (Account.bonusMaps.ContainsKey(bm.mapId))
                                {
                                    Account.bonusMaps[bm.mapId] = bm;
                                } else
                                {
                                    Account.bonusMaps.Add(bm.mapId, bm);
                                }
                            }
                            BotLogic.UpdateBonusmapList();
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
                                    if (amsItem.Key == 23)
                                    {
                                        Account.canonRange = amsItem.Value;
                                    }
                                    if (amsItem.Key == 24)
                                    {
                                        Account.reloadTime = amsItem.Value;
                                    }
                                    if (amsItem.Key == 11)
                                    {
                                        Account.boardHpLimit = amsItem.Value;
                                    }
                                    else
                                    if (amsItem.Key == 7)
                                    {
                                        Account.boardingAttackValue = amsItem.Value;
                                    }
                                }
                            }
                            else
                            if (entitys.ContainsKey(amsUpdate.entityId))
                            {
                                if (entitys[amsUpdate.entityId] is MonsterInitMessage)
                                {
                                    foreach (var amsItem in amsUpdate.amsUpdate)
                                    {
                                        if (amsItem.Key == 45)
                                        {
                                            if (amsUpdate.space == 1)
                                            {
                                                (entitys[amsUpdate.entityId] as MonsterInitMessage).maxHitpoints = (int)amsItem.Value;
                                            }
                                            if (amsUpdate.space == 0)
                                            {
                                                (entitys[amsUpdate.entityId] as MonsterInitMessage).hitpoints = (int)amsItem.Value;
                                            }
                                        }
                                    }
                                }
                                if (entitys[amsUpdate.entityId] is ShipInitMessage)
                                {
                                    foreach (var amsItem in amsUpdate.amsUpdate)
                                    {
                                        if (amsItem.Key == 45)
                                        {
                                            if (amsUpdate.space == 1)
                                                (entitys[amsUpdate.entityId] as ShipInitMessage).pointsMax.HitPoints = (int)amsItem.Value;
                                            if (amsUpdate.space == 0)
                                                (entitys[amsUpdate.entityId] as ShipInitMessage).pointsCurrent.HitPoints = (int)amsItem.Value;
                                        }
                                        if (amsItem.Key == 80)
                                        {
                                            (entitys[amsUpdate.entityId] as ShipInitMessage).speed = amsItem.Value / 100;
                                        }
                                        if (amsItem.Key == 86)
                                        {
                                            if (amsUpdate.space == 1)
                                                (entitys[amsUpdate.entityId] as ShipInitMessage).pointsMax.VoodooPoints = (int)amsItem.Value;
                                            if (amsUpdate.space == 0)
                                                (entitys[amsUpdate.entityId] as ShipInitMessage).pointsMax.VoodooPoints = (int)amsItem.Value;
                                        }
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
                            Account.map = mapChange.mapInfo.Map != null || mapChange.mapInfo.Map.Length > 1 ? mapChange.mapInfo.Map : BotMethods.MapHandler(mapChange.mapInfo.MapID);
                            Account.position = mapChange.position;
                            if (mapChange.mapInfo.MapID == 500 || mapChange.mapInfo.MapID == 300 || mapChange.mapInfo.MapID == 301)
                            {
                                entitys.Clear();
                            }
                            BotLogic.WriteLine("Map " + mapChange.mapInfo.Map + "[" + mapChange.mapInfo.MapID + "]");
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
                            if (Client.entitys.ContainsKey(route.entityId) && Client.entitys[route.entityId] is ShipInitMessage ship)
                            {
                                ship.position.X = route.WayPath[0].X;
                                ship.position.Y = route.WayPath[0].Y;
                                ship.route = route.WayPath;
                            }
                            if (EntityMovementList.ContainsKey(route.entityId))
                            {
                                EntityMovementList[route.entityId] = route.WayPath;
                            }
                            else
                            {
                                EntityMovementList.Add(route.entityId, route.WayPath);
                            }
                        }
                        else
                            if (id == new StopMessage().getID())
                        {
                            var stop = new StopMessage();
                            stop.Read(reader);
                            if (stop.entityId.Equals(Account.userId))
                            {
                                Account.position.dX = (double)stop.position.X;
                                Account.position.dY = (double)stop.position.Y;
                                Account.position = stop.position;
                            }
                            else
                            {
                                if (entitys.ContainsKey(stop.entityId))
                                {
                                    if (entitys[stop.entityId] is ShipInitMessage ship)
                                    {
                                        ship.route.Clear();
                                        ship.position.dX = (double)stop.position.X;
                                        ship.position.dY = (double)stop.position.Y;
                                        ship.position = stop.position;
                                        if (!Client.EntityMovementList.ContainsKey(ship.entityId))
                                        {
                                            Client.EntityMovementList.Add(ship.entityId, new List<PositionStub>() { ship.position });
                                        }
                                    }
                                }
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
                                BotLogic.WriteLine("Start Repair.");
                            }
                            else
                            {
                                Account.repairing = false;
                                BotLogic.WriteLine("Stop Repair.");
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
                            if (id == new MonsterInitMessage(0.0, 0, 0, 0, 0, null).getID())
                        {
                            var monsterInit = new MonsterInitMessage(0.0, 0, 0, 0, 0, null);
                            monsterInit.Read(reader);
                            if (monsterInit.nameId == 26 || monsterInit.nameId == 33 || monsterInit.nameId == 34 || monsterInit.nameId == 38 || monsterInit.nameId == 39 || monsterInit.nameId == 40 || monsterInit.nameId == 41 || monsterInit.nameId == 52 || monsterInit.nameId == 53 || monsterInit.nameId == 54 || monsterInit.nameId == 55)
                            {
                                monsterInit.nameId = 26;
                            }
                            if (BotMethods.monsterNames.ContainsKey(monsterInit.nameId))
                            {
                                monsterInit.name = BotMethods.monsterNames[monsterInit.nameId];
                            }
                            if (!entitys.ContainsKey(monsterInit.entityId))
                                entitys.Add(monsterInit.entityId, monsterInit);
                        }
                        else
                            if (id == new MonsterRemoveMessage().getID())
                        {
                            var monsterRemove = new MonsterRemoveMessage();
                            monsterRemove.Read(reader);
                            if (monsterRemove.entityId == BotMethods.targetentityId)
                            {
                                BotMethods.targetentityId = 0.0;
                            }
                            if (entitys.ContainsKey(monsterRemove.entityId))
                                entitys.Remove(monsterRemove.entityId);
                        }
                        else
                            if (id == new ShipInitMessage().getID())
                        {
                            var shipInit = new ShipInitMessage();
                            shipInit.Read(reader);
                            if (BotMethods.npcNames.ContainsKey(shipInit.nameId))
                            {
                                shipInit.name = BotMethods.npcNames[shipInit.nameId];
                            }
                            if (!Client.entitys.ContainsKey(shipInit.entityId))
                            {
                                Client.entitys.Add(shipInit.entityId, shipInit);
                            }
                        }
                        else
                            if (id == new ShipRemoveMessage().getID())
                        {
                            var shipRemove = new ShipRemoveMessage();
                            shipRemove.Read(reader);
                            if (Client.entitys.ContainsKey(shipRemove.entityId))
                            {
                                Client.entitys.Remove(shipRemove.entityId);
                            }
                            if (BotMethods.targetentityId.Equals(shipRemove.entityId))
                            {
                                BotSession.sessionpcs++;
                            }
                            if (Client.attackRetryList.ContainsKey(shipRemove.entityId))
                            {
                                Client.attackRetryList.Remove(shipRemove.entityId);
                            }
                        }
                        else
                            if (id == new DisplayHitMessage().getID())
                        {
                            var displayHit = new DisplayHitMessage();
                            displayHit.Read(reader);
                            if (displayHit.attackerId.Equals(Account.userId))
                            {
                                BotLogic.attacking = 15;
                                if (displayHit.defenderId.Equals(BotMethods.targetentityId) && entitys.ContainsKey(BotMethods.targetentityId) && entitys[BotMethods.targetentityId] is MonsterInitMessage monster)
                                {
                                    BotLogic.WriteLine(string.Concat(new object[] {
                                                                                    "Attacking ",
                                                                                    monster.name,
                                                                                    " Damage: ",
                                                                                    displayHit.damage.HitPoints + displayHit.damage.VoodooPoints,
                                                                                    " - HP: ",
                                                                                    monster.hitpoints - (displayHit.damage.HitPoints + displayHit.damage.VoodooPoints),
                                                                                    "/",
                                                                                    monster.maxHitpoints
                                                                                }));
                                }
                                if (displayHit.defenderId.Equals(BotMethods.targetentityId) && entitys.ContainsKey(BotMethods.targetentityId) && entitys[BotMethods.targetentityId] is ShipInitMessage ship)
                                {
                                    BotLogic.WriteLine(string.Concat(new object[] {
                                                                                    "Attacking ",
                                                                                    ship.name,
                                                                                    " Damage: ",
                                                                                    displayHit.damage.HitPoints + displayHit.damage.VoodooPoints,
                                                                                    " - HP: ",
                                                                                    ship.pointsCurrent.HitPoints - (displayHit.damage.HitPoints + displayHit.damage.VoodooPoints),
                                                                                    "/",
                                                                                    ship.pointsMax.HitPoints
                                                                                }));
                                }
                                if (!entitys.ContainsKey(displayHit.attackerId) && Account.onBm)
                                {
                                    var position = new PositionStub(0, 0);
                                    var route = new List<PositionStub>();
                                    if (EntityMovementList.ContainsKey(displayHit.attackerId))
                                    {
                                        route = (List<PositionStub>)EntityMovementList[displayHit.attackerId];
                                        position = route.FirstOrDefault();
                                    }
                                    var _ship = new ShipInitMessage(displayHit.attackerId, displayHit.attackerProjectId, -1, 10000, 10000, position, route);
                                    _ship.name = "Bonusmap-NPC";
                                    Client.entitys.Add(displayHit.attackerId, _ship);
                                    if (Account.onBm)
                                    {
                                        var point = BotMethods.MoveToFarestCorner();
                                        SeafightMethods.Move(point.X, point.Y);
                                    }
                                }
                                else if (attackRetryList.ContainsKey(displayHit.attackerId))
                                {
                                    attackRetryList.Remove(displayHit.attackerId);
                                }
                            }
                        }
                        else
                            if (id == new AbortAttackMessage().getID())
                        {
                            var abortAttack = new AbortAttackMessage();
                            abortAttack.Read(reader);
                            if (!BotMethods.targetentityId.Equals(0.0))
                            {
                                double entityId = BotMethods.targetentityId;
                                if (Client.entitys.ContainsKey(entityId) && Client.entitys[entityId] is ShipInitMessage)
                                {
                                    if (attackRetryList.ContainsKey(entityId))
                                    {
                                        var copy = attackRetryList;
                                        double entity = entityId;
                                        int count = copy[entity];
                                        copy[entity] = count + 1;
                                        if (attackRetryList[entityId] >= 8)
                                        {
                                            BotMethods.targetentityId = 0.0;
                                            if (Client.entitys.ContainsKey(entityId))
                                            {
                                                Client.entitys.Remove(entityId);
                                            }
                                            Client.attackRetryList.Remove(entityId);
                                        }
                                    }
                                    else
                                    {
                                        Client.attackRetryList.Add(entityId, 1);
                                    }
                                }
                                else
                                {
                                    BotMethods.targetentityId = 0.0;
                                }
                            }
                            BotLogic.attacking = 2;
                        }
                        else
                            if (id == new DisplayResourceIDMessage().getID())
                        {
                            var displayResourceId = new DisplayResourceIDMessage();
                            displayResourceId.Read(reader);
                            BotMethods.ResourceIdHandler(displayResourceId.Message, displayResourceId.MessageArgs);
                        }
                        else
                        {
                            if (length > 2)
                                reader.index += length - 2;
                        }
                    }
                }
                catch (Exception ex)
                {
                    BotLogic.WriteLine("There was an Error while reading packets! " + ex);
                }
            }
        }

    }
}
