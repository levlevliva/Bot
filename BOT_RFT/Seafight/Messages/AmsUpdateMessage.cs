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
            return -16581;
        }

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }

        public override void Read(Reader reader)
        {
            this.version = reader.ReadShort();
            this.version = (65535 & ((65535 & this.version) << 15 | (int)((uint)(65535 & this.version) >> 1)));
            this.version = ((this.version > 32767) ? (this.version - 65536) : this.version);          
            this.amsUpdate = new List<AmsUpdateValue>();
            int i = 0;
            int max = reader.ReadByte();
            while (i < max)
            {
                reader.ReadShort();
                var ams = new AmsUpdateValue();
                ams.Read(reader);
                amsUpdate.Add(ams);
                i++;
            }
            this.space = reader.ReadShort();
            this.entityId = reader.ReadDouble();
            this.projectId = reader.ReadShort();
            this.projectId = 65535 & ((65535 & this.projectId) >> 1 | (65535 & this.projectId) << 15);
            this.projectId = this.projectId > 32767 ? (int)(this.projectId - 65536) : (int)(this.projectId);
        }
    }
}
