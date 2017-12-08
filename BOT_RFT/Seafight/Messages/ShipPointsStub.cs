using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class ShipPointsStub : Message //ship_90;
    {
        private int version;
        public int HitPoints;
        public int VoodooPoints;

        public ShipPointsStub()
        {
        }

        public ShipPointsStub(int hitPoints, int voodooPoints)
        {
            this.HitPoints = hitPoints;
            this.VoodooPoints = voodooPoints;
        }

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }

        public override int getID()
        {
            return 26003;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.ReadShort();
            this.version = 65535 & ((65535 & this.version) << 7 | (65535 & this.version) >> 9);
            this.version = this.version > 32767 ? (this.version - 65536) : (this.version);
            this.VoodooPoints = reader.ReadInt();
            this.VoodooPoints = this.VoodooPoints >> 6 | this.VoodooPoints << 26;
            this.HitPoints = reader.ReadInt();
            this.HitPoints = this.HitPoints >> 15 | this.HitPoints << 17;
        }
    }
}
