using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class HeartbeatMessage : Message //7.590; //this.var_129.connect(class_51.var_1531,class_51.var_1545)
    {
        public const int STATE_SYN = 0;
        public const int STATE_ACK = 1;
        public const int STATE__MAX = 2;

        private int _version;
        public int state;
        public double var_194;

        public HeartbeatMessage(int state, double time)
        {
            this.state = state;
            this.var_194 = time;
        }

        public override int getID()
        {
            return -22512;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = 65535 & ((65535 & this._version) >> 10 | (65535 & this._version) << 6);
            this._version = this._version > 32767 ? (this._version - 65536) : (this._version);
            this.state = reader.ReadShort();
            this.var_194 = reader.ReadDouble();

            
        }

        public override byte[] Write()
        {
            List<byte[]> buffer = new List<byte[]>();
            buffer.Add(Reader.WriteShort(getID()));
            buffer.Add(Reader.WriteShort(0));
            buffer.Add(Reader.WriteShort(this.state));  
            buffer.Add(Reader.WriteDouble(this.var_194));
            return buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }
    }
}
