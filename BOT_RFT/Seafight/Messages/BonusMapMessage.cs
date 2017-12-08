using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class BonusMapMessage : Message //package_9.class_877;
    {
        private int _version;
        public List<BonusMapStub> maps;

        public BonusMapMessage()
        {
        }

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }

        public override int getID()
        {
            return -31074;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = (int)(65535u & ((uint)(65535 & this._version) >> 11 | (uint)((uint)(65535 & this._version) << 5)));
            this._version = ((this._version > 32767) ? (this._version - 65536) : this._version);
            this.maps = new List<BonusMapStub>();
            int i = 0;
            int num = reader.ReadByte();
            while (i < num)
            {
                reader.ReadShort();
                var map = new BonusMapStub();
                map.Read(reader);
                maps.Add(map);
                i++;
            }
        }
    }
}
