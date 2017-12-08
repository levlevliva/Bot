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
            Buffer.Add(Reader.writeShort(getID()));
            Buffer.Add(Reader.writeShort(0));
            Buffer.Add(Reader.writeShort((65535 & ((65535 & this.X) << 12 | (65535 & this.X) >> 4))));
            Buffer.Add(Reader.writeShort((65535 & ((65535 & this.Y) >> 10 | (65535 & this.Y) << 6))));
            return Buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }

        public override int getID()
        {
            return 28721;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.readShort();
            this.version = (65535 & ((65535 & this.version) << 2 | (int)((uint)(65535 & this.version) >> 14)));
            this.version = ((this.version > 32767) ? (this.version - 65536) : this.version);
            this.Y = reader.readShort();
            this.Y = (65535 & ((65535 & this.Y) >> 3 | (65535 & this.Y) << 13));
            this.Y = ((this.Y > 32767) ? (this.Y - 65536) : this.Y);
            this.X = reader.readShort();
            this.X = (65535 & ((65535 & this.X) << 13 | (65535 & this.X) >> 3));
            this.X = ((this.X > 32767) ? (this.X - 65536) : this.X);  
        }
    }
}
