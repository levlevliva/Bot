using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class AbortAttackMessage : Message //91.414
    {
        private int _version;

        public override int getID()
        {
            return 25350;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = 65535 & ((65535 & this._version) >> 12 | (65535 & this._version) << 4);
            this._version = this._version > 32767 ? (this._version - 65536) : (this._version);
        }

        public override byte[] Write()
        {
            List<byte[]> Buffer = new List<byte[]>();
            Buffer.Add(Reader.WriteShort(getID()));
            Buffer.Add(Reader.WriteShort(0));
            return Buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }
    }
}
