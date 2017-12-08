using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class RepairMessage : Message //package_7.class_298;
    {
        private int version;
        public int Modus;

        public RepairMessage(int Modus)
        {
            this.Modus = Modus;
        }

        public override byte[] Write()
        {
            List<byte[]> Buffer = new List<byte[]>();
            Buffer.Add(Reader.writeShort(getID()));
            Buffer.Add(Reader.writeShort(0));
            Buffer.Add(Reader.writeShort(this.Modus));
            return Buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }

        public override int getID()
        {
            return -21992;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.readShort();
            this.version = (int)(65535 & ((uint)(65535 & this.version) >> 5 | (uint)((uint)(65535 & this.version) << 11)));
            this.version = ((this.version > 32767) ? (this.version - 65536) : this.version);
            this.Modus = reader.readShort();
        }
    }
}
