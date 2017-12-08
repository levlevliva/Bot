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
            return -31944;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.readShort();
            this.version = 65535 & ((65535 & this.version) >> 4 | (65535 & this.version) << 12);
            this.version = this.version > 32767 ? (this.version - 65536) : (this.version);
            this.entityId = reader.readDouble();
            this.projectId = reader.readShort();
            this.projectId = 65535 & ((65535 & this.projectId) << 15 | (65535 & this.projectId) >> 1);
            this.projectId = this.projectId > 32767 ? (this.projectId - 65536) : (this.projectId);
            this.WayPath = new List<PositionStub>();
            var i = 0;
            var max = reader.readShort();
            while (i < max)
            {
                reader.readShort();
                var pos = new PositionStub(0, 0);
                pos.Read(reader);
                this.WayPath.Add(pos);
                i++;
            }
        }
    }
}
