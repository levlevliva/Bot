using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class MoveMessage : Message //package9_class606
    {
        public int X;
        public int Y;
        private int version;

        public MoveMessage(int X, int Y)
        {
            this.X = X;
            this.Y = Y;
        }

        public override byte[] Write()
        {
            List<byte[]> Buffer = new List<byte[]>();
            Buffer.Add(Reader.WriteShort(getID()));
            Buffer.Add(Reader.WriteShort(0));
            Buffer.Add(Reader.WriteShort((65535 & ((65535 & this.X) >> 7 | (65535 & this.X) << 9))));
            Buffer.Add(Reader.WriteShort((65535 & ((65535 & this.Y) << 14 | (65535 & this.Y) >> 2))));
            return Buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }

        public override int getID()
        {
            return -334;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.ReadShort();
            this.version = (65535 & ((65535 & this.version) << 2 | (int)((uint)(65535 & this.version) >> 14)));
            this.version = ((this.version > 32767) ? (this.version - 65536) : this.version);
            this.Y = reader.ReadShort();
            this.Y = (65535 & ((65535 & this.Y) >> 15 | (65535 & this.Y) << 1));
            this.Y = ((this.Y > 32767) ? (this.Y - 65536) : this.Y);
            this.X = reader.ReadShort();
            this.X = (65535 & ((65535 & this.X) << 11 | (65535 & this.X) >> 5));
            this.X = ((this.X > 32767) ? (this.X - 65536) : this.X);  
        }
    }
}
