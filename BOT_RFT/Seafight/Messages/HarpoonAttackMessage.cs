using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class HarpoonAttackMessage : Message //package_91.class_698;
    {
        private int _version;
        public int projectId;
        public double entityId;
        public int harpoonId;

        public HarpoonAttackMessage(double entityId, int projectId, int harpoonId)
        {
            this.entityId = entityId;
            this.projectId = projectId;
            this.harpoonId = harpoonId;
        }

        public override byte[] Write()
        {
            List<byte[]> Buffer = new List<byte[]>();
            Buffer.Add(Reader.WriteShort(getID()));
            Buffer.Add(Reader.WriteShort(0));
            Buffer.Add(Reader.WriteShort((int)(65535u & ((uint)(65535 & this.harpoonId) >> 2 | ((uint)(65535 & this.harpoonId) << 14)))));
            Buffer.Add(Reader.WriteDouble(entityId));
            Buffer.Add(Reader.WriteShort((int)(65535u & ((65535 & this.projectId) << 2 | (65535 & this.projectId) >> 14)))); 
            return Buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }

        public override int getID()
        {
            return -30929;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = (65535 & ((65535 & this._version) | (65535 & this._version) << 16));
            this._version = ((this._version > 32767) ? (this._version - 65536) : this._version);
            this.projectId = reader.ReadShort();
            this.projectId = (65535 & ((65535 & this.projectId) << 12 | (int)((uint)(65535 & this.projectId) >> 5)));
            this.projectId = ((this.projectId > 32767) ? (this.projectId - 65536) : this.projectId);
            this.entityId = reader.ReadDouble();
            this.harpoonId = reader.ReadShort();
            this.harpoonId = (65535 & ((65535 & this.harpoonId) >> 14 | (int)((uint)(65535 & this.harpoonId) << 2)));
            this.harpoonId = ((this.harpoonId > 32767) ? (this.harpoonId - 65536) : this.harpoonId);
        }
    }
}
