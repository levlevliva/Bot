using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class AmsUpdateMessage : Message //net.bigpoint.seafight.com.module.ship.class_484;
    {
        private int version;
        public int space;
        public double entityId;
        public int projectId;
        public List<AmsUpdateValue> amsUpdate;

        public override int getID()
        {
            return 29850;
        }

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }

        public override void Read(Reader reader)
        {
            this.version = reader.readShort();
            this.version = (65535 & ((65535 & this.version) << 15 | (int)((uint)(65535 & this.version) >> 1)));
            this.version = ((this.version > 32767) ? (this.version - 65536) : this.version);
            this.entityId = reader.readDouble();
            this.projectId = reader.readShort();
            this.projectId = 65535 & ((65535 & this.projectId) << 14 | (65535 & this.projectId) >> 2);
            this.projectId = this.projectId > 32767 ? (int)(this.projectId - 65536) : (int)(this.projectId);
            this.amsUpdate = new List<AmsUpdateValue>();
            int i = 0;
            int max = reader.readByte();
            while (i < max)
            {
                reader.readShort();
                var ams = new AmsUpdateValue();
                ams.Read(reader);
                amsUpdate.Add(ams);
                i++;
            }
            this.space = reader.readShort();
        }
    }
}
