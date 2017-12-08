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

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }

        public override int getID()
        {
            return -8397;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.readShort();
            this.version = 65535 & ((65535 & this.version) << 7 | (65535 & this.version) >> 9);
            this.version = this.version > 32767 ? (this.version - 65536) : (this.version);
            this.HitPoints = reader.readInt();
            this.HitPoints = this.HitPoints >> 16 | this.HitPoints << 16;
            this.VoodooPoints = reader.readInt();
            this.VoodooPoints = this.VoodooPoints << 5 | this.VoodooPoints >> 27;
        }
    }
}
