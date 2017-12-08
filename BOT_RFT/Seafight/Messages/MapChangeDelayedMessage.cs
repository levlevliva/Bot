using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class MapChangeDelayedMessage : Message //9.583;
    {
        private int _version;
        public int mapId;

        public MapChangeDelayedMessage()
        {
        }

        public MapChangeDelayedMessage(int mapId)
        {
            this.mapId = mapId;
        }

        public override byte[] Write()
        {
            List<byte[]> Buffer = new List<byte[]>();
            Buffer.Add(Reader.WriteShort(getID()));
            Buffer.Add(Reader.WriteShort(0));
            Buffer.Add(Reader.WriteShort((65535 & ((65535 & this.mapId) << 13 | (65535 & this.mapId) >> 3))));
            return Buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }

        public override int getID()
        {
            return 11738;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = 65535 & ((65535 & this._version) << 6 | (65535 & this._version) >> 10);
            this._version = this._version > 32767 ? (this._version - 65536) : (this._version);
            this.mapId = reader.ReadShort();
            this.mapId = 65535 & ((65535 & this.mapId) << 12 | (65535 & this.mapId) << 4);
            this.mapId = this.mapId > 32767 ? (this.mapId - 65536) : (this.mapId);
        }
    }
}
