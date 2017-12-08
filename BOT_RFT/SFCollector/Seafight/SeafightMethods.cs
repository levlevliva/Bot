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
            Client.Send(new MoveMessage(x, y));
        }

        public static void Revive()
        {
            Client.Send(new MapReturnToOldMapMessage());
        }

        public static void StartRepair()
        {
            Client.Send(new RepairMessage(0));
        }

        public static void StopRepair()
        {
            Client.Send(new RepairMessage(1));
        }

        public static void HeatBeat()
        {
            Client.Send(new HeartbeatMessage(0));
        }
    }
}
