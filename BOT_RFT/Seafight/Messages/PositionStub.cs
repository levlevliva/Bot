using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class PositionStub : Message //9_91;
    {
        private int version;
        public int X; //8
        public int Y; //9
        public double dX;
        public double dY;
        public List<PositionStub> Path;

        public PositionStub(int X, int Y)
        {
            this.X = X;
            this.Y = Y;
        }

        public override byte[] Write()
        {
            List<byte[]> Buffer = new List<byte[]>();
            Buffer.Add(Reader.WriteShort(getID()));
            Buffer.Add(Reader.WriteShort(0));
            Buffer.Add(Reader.WriteShort((65535 & ((65535 & this.X) >> 14 | (65535 & this.X) << 2))));
            Buffer.Add(Reader.WriteShort((65535 & ((65535 & this.Y) >> 14 | (65535 & this.Y) << 2))));
            return Buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }

        public override int getID()
        {
            return 29475;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.ReadShort();
            this.version = 65535 & ((65535 & this.version) << 13 | (65535 & this.version) >> 3);
            this.version = this.version > 32767 ? (this.version - 65536) : (this.version);
            this.X = reader.ReadShort();
            this.X = 65535 & ((65535 & this.X) << 2 | (65535 & this.X) >> 14);
            this.X = this.X > 32767 ? (this.X - 65536) : (this.X);
            this.Y = reader.ReadShort();
            this.Y = 65535 & ((65535 & this.Y) >> 5 | (65535 & this.Y) << 11);
            this.Y = this.Y > 32767 ? (this.Y - 65536) : (this.Y);
        }
    }
}
