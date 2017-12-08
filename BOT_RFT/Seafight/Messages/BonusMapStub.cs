using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class BonusMapStub : Message //package_9.class_729;
    {
        private int _version;
        public int mapId; //name_7;
        public int amount; //var_10;
        public int currentWave; //var_450;
        public string mapName = "Unkown Map";

        public BonusMapStub()
        {           
		}

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }

        public override int getID()
        {
            return 23960;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = (65535 & ((65535 & this._version) << 11 | (int)((uint)(65535 & this._version) >> 5)));
            this._version = ((this._version > 32767) ? (this._version - 65536) : this._version);
            this.amount = reader.ReadShort();
            this.amount = (int)(65535u & ((uint)(65535 & this.amount) << 1 | (uint)((uint)(65535 & this.amount) >> 15)));
            this.amount = ((this.amount > 32767) ? (this.amount - 65536) : this.amount);
            this.mapId = reader.ReadShort();
            this.mapId = (65535 & ((65535 & this.mapId) >> 2 | (int)((uint)(65535 & this.mapId) << 14)));
            this.mapId = ((this.mapId > 32767) ? (this.mapId - 65536) : this.mapId);
            this.currentWave = reader.ReadByte();
            this.currentWave = (255 & ((255 & this.currentWave) << 2 | (int)((uint)(255 & this.currentWave) >> 6)));
            this.currentWave = ((this.currentWave > 127) ? (this.currentWave - 256) : this.currentWave);
        }
    }
}
