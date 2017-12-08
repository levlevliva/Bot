using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class UserInitMessage : Message //7.503
    {
        private int version;
        public bool hasPremium; //667;
        public bool hasTreasureHunter; //640;
        public bool isRepairing; //706;
        public double maxXp; //var_684;
        public double xp; //var_643;
        public ShipPointsStub currentHealth; //var_170;
        public PositionStub position; //name_6;
        public int projectId; //name_4;
        public double entityId; //name_4;
        public int maxBp; //var_279;
        public int int_2; //var_53;
        public int Level; //var_25;
        public int bp; //var_287;
        public int designId; //name_14;
        public int medallionId; //name_12;
        public int int_7; //var_157;
        public int int_8; //var_30;
        public string guild = ""; //var_89;
        public string username = ""; //name_13;

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }

        public override int getID()
        {
            return 32305;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.readShort();
            this.version = (int)(65535u & ((uint)(65535 & this.version) >> 7 | (uint)((uint)(65535 & this.version) << 9)));
            this.version = ((this.version > 32767) ? (this.version - 65536) : this.version);
            reader.readShort();
            this.currentHealth = new ShipPointsStub();
            this.currentHealth.Read(reader);
            this.int_2 = reader.readByte();
            this.int_2 = (int)(255u & ((uint)(255 & this.int_2) >> 0 | (uint)((uint)(255 & this.int_2) << 8)));
            this.int_2 = ((this.int_2 > 127) ? (this.int_2 - 256) : this.int_2);
            this.Level = reader.readByte();
            this.Level = (255 & ((255 & this.Level) >> 5 | (int)((uint)(255 & this.Level) << 3)));
            this.Level = ((this.Level > 127) ? (this.Level - 256) : this.Level);
            this.designId = reader.readShort();
            this.designId = (int)(65535u & ((uint)(65535 & this.designId) << 13 | (uint)((uint)(65535 & this.designId) >> 3)));
            this.designId = ((this.designId > 32767) ? (this.designId - 65536) : this.designId);
            this.bp = reader.readInt();
            this.bp = (int)((uint)this.bp >> 1 | (uint)((uint)this.bp << 31));
            this.isRepairing = reader.readBool();
            this.username = reader.readString();
            this.guild = reader.readString();
            this.maxXp = reader.readDouble();
            this.position = new PositionStub(0, 0);
            this.position.X = reader.readShort();
            this.position.X = (65535 & ((65535 & this.position.X) << 4 | (int)((uint)(65535 & this.position.X) >> 12)));
            this.position.X = ((this.position.X > 32767) ? (this.position.X - 65536) : this.position.X);
            this.position.Y = reader.readShort();
            this.position.Y = (int)(65535u & ((uint)(65535 & this.position.Y) << 9 | (uint)((uint)(65535 & this.position.Y) >> 7)));
            this.position.Y = ((this.position.Y > 32767) ? (this.position.Y - 65536) : this.position.Y);
            reader.readShort(); //ID
            reader.readShort();
            reader.readShort();
            reader.readDouble();
            this.hasTreasureHunter = reader.readBool();
            this.xp = reader.readDouble();
            this.int_8 = reader.readByte();
            this.int_8 = (255 & ((255 & this.int_8) >> 2 | (int)((uint)(255 & this.int_8) << 6)));
            this.int_8 = ((this.int_8 > 127) ? (this.int_8 - 256) : this.int_8);
            this.maxBp = reader.readInt();
            this.maxBp = (int)((uint)this.maxBp << 7 | (uint)((uint)this.maxBp >> 25));
            this.hasPremium = reader.readBool();
            this.medallionId = reader.readByte();
            this.medallionId = (255 & ((255 & this.medallionId) << 0 | (int)((uint)(255 & this.medallionId) >> 8)));
            this.medallionId = ((this.medallionId > 127) ? (this.medallionId - 256) : this.medallionId);
            this.int_7 = reader.readByte();
            this.int_7 = (255 & ((255 & this.int_7) << 3 | (int)((uint)(255 & this.int_7) >> 5)));
            this.int_7 = ((this.int_7 > 127) ? (this.int_7 - 256) : this.int_7);
            this.entityId = reader.readDouble();
            this.projectId = reader.readShort();
            this.projectId = (65535 & ((65535 & this.projectId) << 15 | (int)((uint)(65535 & this.projectId) >> 1)));
            this.projectId = ((this.projectId > 32767) ? (this.projectId - 65536) : this.projectId);
        }
    }
}
