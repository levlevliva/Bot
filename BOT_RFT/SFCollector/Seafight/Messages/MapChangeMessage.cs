using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class MapChangeMessage : Message //package_9.class_395;
    {
        private int version;
        public int animationID; //var_128;
        public PositionStub position; //name_6;
        public MapStub mapInfo;

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }

        public override int getID()
        {
            return 32452;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.readShort();
            this.version = (65535 & ((65535 & this.version) << 3 | (int)((uint)(65535 & this.version) >> 13)));
            this.version = ((this.version > 32767) ? (this.version - 65536) : this.version);
            this.position = new PositionStub(0, 0);
            this.position.Y = reader.readShort();
            this.position.Y = 65535 & ((65535 & this.position.Y) >> 1 | (65535 & this.position.Y) << 15);
            this.position.Y = this.position.Y > 32767 ? (int)(this.position.Y - 65536) : (int)(this.position.Y);
            this.position.X = reader.readShort();
            this.position.X = 65535 & ((65535 & this.position.X) << 5 | (65535 & this.position.X) >> 11);
            this.position.X = this.position.X > 32767 ? (int)(this.position.X - 65536) : (int)(this.position.X);
            //
            reader.readShort(); //ID
            this.mapInfo = new MapStub();
            this.mapInfo.Read(reader);
            //
            this.animationID = reader.readShort();
            this.animationID = 65535 & ((65535 & this.animationID) >> 6 | (65535 & this.animationID) << 10);
            this.animationID = this.animationID > 32767 ? (int)(this.animationID - 65536) : (int)(this.animationID);
        }
    }

    public class Typus
    {
        public Typus(Reader reader)
        {
            reader.readShort();
            this.Y = reader.readByte();
            this.Y = 255 & ((255 & this.Y) >> 2 | (255 & this.Y) << 6);
            this.Y = this.Y > 127 ? (int)(this.Y - 256) : (int)(this.Y);
            this.int_2 = reader.readShort();
            this.int_2 = 65535 & ((65535 & this.int_2) >> 8 | (65535 & this.int_2) << 8);
            this.int_2 = this.int_2 > 32767 ? (int)(this.int_2 - 65536) : (int)(this.int_2);
            this.X = reader.readByte();
            this.X = 255 & ((255 & this.X) >> 2 | (255 & this.X) << 6);
            this.X = this.X > 127 ? (int)(this.X - 256) : (int)(this.X);
        }

        public const int ID = -10104;
        public int int_1;
        public int X;
        public int Y;
        public int int_2;
    }
}
