using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class BoxRemoveMessage : Message //package_124.class_491;
    {
        private int version;
        public double entityId;
        public int projectId;

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }

        public override int getID()
        {
            return 30599;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.ReadShort();
            this.version = (int)(65535u & ((uint)(65535 & this.version) >> 2 | (uint)((uint)(65535 & this.version) << 14)));
            this.version = ((this.version > 32767) ? (this.version - 65536) : this.version);
            this.entityId = reader.ReadDouble();
            this.projectId = reader.ReadShort();
            this.projectId = (int)(65535 & ((65535 & this.projectId) >> 9 | (65535 & this.projectId) << 7));
            this.projectId = ((this.projectId > 32767) ? (this.projectId - 65536) : this.projectId);
        }
    }
}
