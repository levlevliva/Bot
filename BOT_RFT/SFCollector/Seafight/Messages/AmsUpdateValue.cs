using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class AmsUpdateValue : Message //net.bigpoint.seafight.com.module.ship.class_825;
    {
        private int version;
        public double Value;
        public int Key;

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }

        public override int getID()
        {
            return -19486; 
        }

        public override void Read(Reader reader)
        {
            this.version = reader.readShort();
            this.version = (65535 & ((65535 & this.version) << 1 | (int)((uint)(65535 & this.version) >> 15)));
            this.version = ((this.version > 32767) ? (this.version - 65536) : this.version);
            this.Key = reader.readShort();
            this.Value = reader.readDouble(); 
        }
    }
}
