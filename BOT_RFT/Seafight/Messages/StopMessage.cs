using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class StopMessage : Message //9.444
    {
        private int _version;
        public int distance;
        public double entityId;
        public int projectId;
        public PositionStub position;

        public StopMessage()
        { 
        }

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }

        public override int getID()
        {
            return 16509;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = (65535 & ((65535 & this._version) << 13 | (int)((uint)(65535 & this._version) >> 3)));
            this._version = ((this._version > 32767) ? (this._version - 65536) : this._version);
            this.distance = reader.ReadByte();
            this.distance = (int)(255u & ((uint)(255 & this.distance) << 4 | (uint)((uint)(255 & this.distance) >> 4)));
            this.distance = ((this.distance > 127) ? (this.distance - 256) : this.distance);
            this.entityId = reader.ReadDouble();
            this.projectId = reader.ReadShort();
            this.projectId = (65535 & ((65535 & this.projectId) << 7 | (int)((uint)(65535 & this.projectId) >> 9)));
            this.projectId = ((this.projectId > 32767) ? (this.projectId - 65536) : this.projectId);
            this.position = new PositionStub(0, 0);
            this.position.X = reader.ReadShort();
            this.position.X = (65535 & ((65535 & this.position.X) << 4 | (int)((uint)(65535 & this.position.X) >> 12)));
            this.position.X = ((this.position.X > 32767) ? (this.position.X - 65536) : this.position.X);
            this.position.Y = reader.ReadShort();
            this.position.Y = (int)(65535u & ((uint)(65535 & this.position.Y) << 9 | (uint)((uint)(65535 & this.position.Y) >> 7)));
            this.position.Y = ((this.position.Y > 32767) ? (this.position.Y - 65536) : this.position.Y);
        }
    }
}
