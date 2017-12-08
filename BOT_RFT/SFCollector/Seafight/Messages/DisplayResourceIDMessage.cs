using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class DisplayResourceIDMessage : Message //package_7.class_428;
    {
        private int version;
        public bool bool_0;
        public string Message;
        public List<string> MessageArgs;

        public override byte[] Write()
        {
            return null;
        }

        public override int getID()
        {
            return 1167;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.readShort();
            this.version = (int)(65535u & ((uint)(65535 & this.version) >> 4 | (uint)((uint)(65535 & this.version) << 12)));
            this.version = ((this.version > 32767) ? (this.version - 65536) : this.version);
            reader.readShort();
            this.version = reader.readShort();
            this.version = (int)(65535u & ((uint)(65535 & this.version) >> 5 | (uint)((uint)(65535 & this.version) << 11)));
            this.version = ((this.version > 32767) ? (this.version - 65536) : this.version);
            this.Message = reader.readString();
            this.MessageArgs = new List<string>();
            int i = 0;
            int num = reader.readByte();
            while (i < num)
            {
                MessageArgs.Add(reader.readString());
                i++;
            }
            this.bool_0 = reader.readBool();
        }
    }
}
