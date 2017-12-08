using SFCollector.Seafight.Messages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight
{
    public class SeafightMethods
    {
        public static void Move(int x, int y)
        {
            Server.Send(new MoveMessage(x, y));
        }

        public static void Revive()
        {
            Server.Send(new MapReturnToOldMapMessage());
        }

        public static void StartRepair()
        {
            Server.Send(new RepairMessage(0));
        }

        public static void StopRepair()
        {
            Server.Send(new RepairMessage(1));
        }

        public static void HeatBeat()
        {
            Server.Send(new HeartbeatMessage(0, BotMethods.GetTime()));
        }

        public static void AttackMonster(double entityId, int projectId, int harpoonId) 
        {
            Server.Send(new HarpoonAttackMessage(entityId, projectId, harpoonId));
        }

        public static void AttackShip(double entityId, int projectId, int ammoId)
        {
            Server.Send(new CannonAttackMessage(entityId, projectId, ammoId));
        }

        public static void BoardShip(double entityId, int projectId)
        {
            Server.Send(new BoardUserMessage(entityId, projectId));
        }

        public static void ActivateItem(int itemId)
        {
            Server.Send(new ActionItemUseMessage(itemId));
        }

        public static void JoinBonusMap(int mapId)
        {
            Server.Send(new MapChangeDelayedMessage(mapId));
        }
    }
}
