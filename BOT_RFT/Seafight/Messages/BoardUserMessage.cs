using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class BoardUserMessage : Message //package_90.class_316;
    {
        private int _version;
        public double entityId;
        public int projectId;

        public BoardUserMessage()
        {            
        }

        public BoardUserMessage(double entityId, int projectId)
        {
            this.entityId = entityId;
            this.projectId = projectId;
        }

        public override byte[] Write()
        {
            List<byte[]> Buffer = new List<byte[]>();
            Buffer.Add(Reader.WriteShort(getID()));
            Buffer.Add(Reader.WriteShort(0));
            Buffer.Add(Reader.WriteDouble(entityId));
            Buffer.Add(Reader.WriteShort((65535 & ((65535 & this.projectId) >> 9 | (65535 & this.projectId) << 7))));      
            return Buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }

        public override int getID()
        {
            return 8882;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = 65535 & ((65535 & this._version) << 6 | (65535 & this._version) >> 10);
            this._version = this._version > 32767 ? (int)(this._version - 65536) : (int)(this._version);
            this.projectId = reader.ReadShort();
            this.projectId = 65535 & ((65535 & this.projectId) >> 11 | (65535 & this.projectId) << 5);
            this.projectId = this.projectId > 32767 ? (int)(this.projectId - 65536) : (int)(this.projectId);
            this.entityId = reader.ReadDouble();
        }
    }
}
