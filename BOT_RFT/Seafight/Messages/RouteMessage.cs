using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class RouteMessage : Message //package_9.class466
    {
        private int version;
        public double entityId;
        public int projectId;
        public List<PositionStub> WayPath;

        public override byte[] Write()
        {
            return null;
        }

        public override int getID()
        {
            return 31484;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.ReadShort();
            this.version = 65535 & ((65535 & this.version) >> 4 | (65535 & this.version) << 12);
            this.version = this.version > 32767 ? (this.version - 65536) : (this.version);
            this.entityId = reader.ReadDouble();
            this.projectId = reader.ReadShort();
            this.projectId = 65535 & ((65535 & this.projectId) << 9 | (65535 & this.projectId) >> 7);
            this.projectId = this.projectId > 32767 ? (this.projectId - 65536) : (this.projectId);
            this.WayPath = new List<PositionStub>();
            var i = 0;
            var max = reader.ReadShort();
            while (i < max)
            {
                reader.ReadShort();
                var pos = new PositionStub(0, 0);
                pos.Read(reader);
                this.WayPath.Add(pos);
                i++;
            }
        }
    }
}
