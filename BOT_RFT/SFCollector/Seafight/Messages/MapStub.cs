using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class MapStub : Message //package_9.class_17;
    {
        private int version;
        public int theme; //var_729;
        public int MapID; //name_10;
        public int type; //name_5;
        public int width; //var_40;
        public int height; //var_33;
        public string Map; //var_201;
        public bool bool_0; //var_1220;
        public List<Typus> list_0; //var_628;

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }

        public override int getID()
        {
            return -29146;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.readShort();
            this.version = 65535 & ((65535 & this.version) >> 13 | (65535 & this.version) << 3);
            this.version = this.version > 32767 ? (this.version - 65536) : (this.version);
            this.theme = reader.readShort();
            this.Map = reader.readString();
            this.width = reader.readShort();
            this.width = 65535 & ((65535 & this.width) << 8 | (65535 & this.width) >> 8);
            this.width = this.width > 32767 ? (int)(this.width - 65536) : (int)(this.width);
            this.bool_0 = reader.readBool();
            this.type = reader.readShort();
            this.list_0 = new List<Typus>();
            int i = 0;
            int max = reader.readShort();
            //File.AppendAllText(Directory.GetCurrentDirectory() + "\\MapTileStubs.txt", $"MapId: {mapId}\nMapDescribtion: {map}\nType: {type}\nTheme: {theme}\nNeed-Reconnect: {bool_0}\n>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\nTiles\n>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n\n");
            while (i < max)
            {
                reader.readShort();
                this.list_0.Add(new Typus(reader));
                //File.AppendAllText(Directory.GetCurrentDirectory() + "\\MapTileStubs.txt", $"tileId: {maptile.tileId}; X: {maptile.position.X}|Y: {maptile.position.Y}\n");
                i++;
            }
            this.MapID = reader.readShort();
            this.MapID = 65535 & ((65535 & this.MapID) << 1 | (65535 & this.MapID) >> 15);
            this.MapID = this.MapID > 32767 ? (int)(this.MapID - 65536) : (int)(this.MapID);
            this.height = reader.readShort();
            this.height = 65535 & ((65535 & this.height) >> 5 | (65535 & this.height) << 11);
            this.height = this.height > 32767 ? (int)(this.height - 65536) : (int)(this.height);
        }
    }
}
