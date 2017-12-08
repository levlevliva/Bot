using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class HeartbeatMessage : Message //7.590;
    {
        public const int STATE_SYN = 0;
        public const int STATE_ACK = 1;
        public const int STATE__MAX = 2;

        private int _version;
        public int state;

        public HeartbeatMessage(int state)
        {
            this.state = state;
        }

        public override int getID()
        {
            return -27127;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.readShort();
            this._version = 65535 & ((65535 & this._version) >> 10 | (65535 & this._version) << 6);
            this._version = this._version > 32767 ? (this._version - 65536) : (this._version);
            this.state = reader.readShort();
        }

        public override byte[] Write()
        {
            List<byte[]> buffer = new List<byte[]>();
            buffer.Add(Reader.writeShort(getID()));
            buffer.Add(Reader.writeShort(0));
            buffer.Add(Reader.writeShort(this.state));
            return buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }
    }
}
