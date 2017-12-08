using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class ShipEntityInfoType : Message //129.560;
    {
        private int _version;
        public int type;
        public bool var_867;

        public ShipEntityInfoType()
        { 
        }

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }

        public override int getID()
        {
            return -12585;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = 65535 & ((65535 & this._version) << 6 | (65535 & this._version) >> 10);
            this._version = this._version > 32767 ? (this._version - 65536) : (this._version);
            reader.ReadShort();
            this._version = reader.ReadShort();
            this._version = 65535 & ((65535 & this._version) << 6 | (65535 & this._version) >> 10);
            this._version = this._version > 32767 ? (this._version - 65536) : (this._version);
            this.type = reader.ReadShort();
            this.var_867 = reader.ReadBool();
        }
    }
}
