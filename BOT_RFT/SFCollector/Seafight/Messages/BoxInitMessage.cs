using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class BoxInitMessage : Message //package_124.class_439;
    {
        private int version;
        public int Type;
        public bool Visible;
        public PositionStub position;
        public double entityId;
        public int projectId;

        public override byte[] Write()
        {
            return null;
        }

        public override int getID()
        {
            return -29662;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.readShort();
            this.version = (int)(65535u & ((uint)(65535 & this.version) >> 6 | (uint)((uint)(65535 & this.version) << 10)));
            this.version = ((this.version > 32767) ? (this.version - 65536) : this.version);
            this.position = new PositionStub(0, 0);
            this.position.X = reader.readShort();
            this.position.X = 65535 & ((65535 & this.position.X) >> 10 | (65535 & this.position.X) << 6);
            this.position.X = this.position.X > 32767 ? (int)(this.position.X - 65536) : (int)(this.position.X);
            this.position.Y = reader.readShort();
            this.position.Y = 65535 & ((65535 & this.position.Y) >> 0 | (65535 & this.position.Y) << 16);
            this.position.Y = this.position.Y > 32767 ? (int)(this.position.Y - 65536) : (int)(this.position.Y);
            this.Type = reader.readShort();
            this.entityId = reader.readDouble();
            this.projectId = reader.readShort();
            this.projectId = (65535 & ((65535 & this.projectId) >> 10 | (65535 & this.projectId) << 6));
            this.projectId = this.projectId > 32767 ? (int)(this.projectId - 65536) : (int)(this.projectId);
            this.Visible = reader.readBool();
        }
    }
}
