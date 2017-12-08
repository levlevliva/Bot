using SFCollector.Seafight.Messages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight
{
    public class Account
    {

        public static double userId;
        public static int projectId;
        public static string sessionId;
        public static string username;
        public static string server;
        public static string rtvt = "flashbd8873245426d3d53154af683df";
        public static string map;
        public static int mapId;
        public static int hitPoints;
        public static int maxHitPoints;
        public static int voodooPoints;
        public static int maxVoodooPoints;
        public static int level;
        public static double speed;
        public static bool moving;
        public static bool repairing;
        public static bool hasRepairMaatLevel5;
        public static PositionStub position = new PositionStub(0, 0);
        public static List<PositionStub> route = new List<PositionStub>();
    }
}
