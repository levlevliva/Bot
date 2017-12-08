using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    class MapReturnToOldMapMessage : Message //package_9.class_684;
    {
        private int version;

        public override byte[] Write()
        {
            List<byte[]> Buffer = new List<byte[]>();
            Buffer.Add(Reader.writeShort(getID()));
            Buffer.Add(Reader.writeShort(0));
            return Buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }

        public override int getID()
        {
            return 4722;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.readShort();
            this.version = (int)(65535u & ((uint)(65535 & this.version) >> 6 | (uint)((uint)(65535 & this.version) << 10)));
            this.version = ((this.version > 32767) ? (this.version - 65536) : this.version);
        }
    }
}
