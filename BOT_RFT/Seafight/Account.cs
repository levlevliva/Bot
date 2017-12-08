using SFCollector.Seafight.Messages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight
{
    public static class Account
    {
        public static UserInitMessage gClass;

        public static double userId;
        public static int projectId;
        public static string sessionId;
        public static string username;
        public static string server;
        public static string language = "en";
        public static string map;
        public static int mapId;
        public static int hitPoints;
        public static int maxHitPoints;
        public static int voodooPoints;
        public static int maxVoodooPoints;
        public static int level;
        public static int raidMedallion;
        public static double speed;
        public static double canonRange;
        public static double boardingRange = 10;
        public static double boardingAttackValue;
        public static double boardHpLimit;
        public static double reloadTime;
        public static bool moving;
        public static bool repairing;
        public static bool hasRepairMaatLevel5;
        public static bool joining;
        public static PositionStub position = new PositionStub(0, 0);
        public static List<PositionStub> route = new List<PositionStub>();
        public static Dictionary<int, BonusMapStub> bonusMaps = new Dictionary<int, BonusMapStub>();

        public static bool onRaid
        {
            get
            {
                return Account.mapId == 300 || Account.mapId == 301;
            }
        }

        public static bool onBm
        {
            get
            {
                return (bonusMaps.ContainsKey(mapId));
            }
        }

        public static int GetCurrentHpPercent
        {
            get
            {
                return (int)((double)Account.hitPoints / (double)Account.maxHitPoints * 100.0);
            }
        }
        public static int GetCurrentVpPercent
        {
            get
            {
                return (int)((double)Account.voodooPoints / (double)Account.maxVoodooPoints * 100.0);
            }
        }
    }
}
