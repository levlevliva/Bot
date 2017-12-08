using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class ActionItemUseMessage : Message //package_88.class_317;
    {
        private int _version;
        public int itemId;

        public ActionItemUseMessage(int itemId)
        {
            this.itemId = itemId;
        }

        public override byte[] Write()
        {
            List<byte[]> Buffer = new List<byte[]>();
            Buffer.Add(Reader.WriteShort(getID()));
            Buffer.Add(Reader.WriteShort(0));
            Buffer.Add(Reader.WriteShort((int)(65535 & ((65535 & this.itemId) << 12 | (65535 & this.itemId) >> 4))));
            return Buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }

        public override int getID()
        {
            return 4614;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = (65535 & ((65535 & this._version) << 12 | (int)((uint)(65535 & this._version) >> 4)));
            this._version = ((this._version > 32767) ? (this._version - 65536) : this._version);
            this.itemId = reader.ReadShort();
            this.itemId = (65535 & ((65535 & this.itemId) >> 10 | (65535 & this.itemId) << 6));
            this.itemId = ((this.itemId > 32767) ? (this.itemId - 65536) : this.itemId);
        }
    }
}
