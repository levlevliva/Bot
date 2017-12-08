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
        public int type;
        public bool visible;
        public PositionStub position;
        public double entityId;
        public int projectId;

        public BoxInitMessage(double entityId = 0.0, int projectId = 0, PositionStub position = null, int type = 0, bool visible = false)
        {
            this.entityId = entityId;
            this.projectId = projectId;
            if (position == null)
            {
                this.position = new PositionStub(0, 0);
            } else
            {
                this.position = position;
            }
            this.type = type;
            this.visible = visible;
        }
        public override byte[] Write()
        {
            return null;
        }

        public override int getID()
        {
            return 13781;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.ReadShort();
            this.version = (int)(65535u & ((uint)(65535 & this.version) >> 6 | (uint)((uint)(65535 & this.version) << 10)));
            this.version = ((this.version > 32767) ? (this.version - 65536) : this.version);           
            this.entityId = reader.ReadDouble();
            this.projectId = reader.ReadShort();
            this.projectId = (65535 & ((65535 & this.projectId) << 6 | (65535 & this.projectId) >> 10));
            this.projectId = this.projectId > 32767 ? (int)(this.projectId - 65536) : (int)(this.projectId);
            this.position = new PositionStub(0, 0);
            this.position.X = reader.ReadShort();
            this.position.X = 65535 & ((65535 & this.position.X) >> 0 | (65535 & this.position.X) << 16);
            this.position.X = this.position.X > 32767 ? (int)(this.position.X - 65536) : (int)(this.position.X);
            this.position.Y = reader.ReadShort();
            this.position.Y = 65535 & ((65535 & this.position.Y) >> 9 | (65535 & this.position.Y) << 7);
            this.position.Y = this.position.Y > 32767 ? (int)(this.position.Y - 65536) : (int)(this.position.Y);
            this.visible = reader.ReadBool();
            this.type = reader.ReadShort();
        }
    }
}
