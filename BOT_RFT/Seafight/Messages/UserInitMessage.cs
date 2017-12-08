using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class UserInitMessage : Message //7.15
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
        public List<PositionStub> route = new List<PositionStub>();

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }

        public override int getID()
        {
            return -21923;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.ReadShort();
            this.version = (int)(65535u & ((uint)(65535 & this.version) >> 7 | (uint)((uint)(65535 & this.version) << 9)));
            this.version = ((this.version > 32767) ? (this.version - 65536) : this.version);
            this.hasPremium = reader.ReadBool();
            this.int_7 = reader.ReadByte();
            this.int_7 = (255 & ((255 & this.int_7) >> 0 | (int)((uint)(255 & this.int_7) << 8)));
            this.int_7 = ((this.int_7 > 127) ? (this.int_7 - 256) : this.int_7);
            this.designId = reader.ReadShort();
            this.designId = (int)(65535u & ((uint)(65535 & this.designId) >> 8 | (uint)((uint)(65535 & this.designId) << 8)));
            this.designId = ((this.designId > 32767) ? (this.designId - 65536) : this.designId);
            this.bp = reader.ReadInt();
            this.bp = (int)((uint)this.bp << 11 | (uint)((uint)this.bp >> 21));
            this.entityId = reader.ReadDouble();
            this.projectId = reader.ReadShort();
            this.projectId = (65535 & ((65535 & this.projectId) >> 5 | (int)((uint)(65535 & this.projectId) << 11)));
            this.projectId = ((this.projectId > 32767) ? (this.projectId - 65536) : this.projectId);
            this.int_8 = reader.ReadByte();
            this.int_8 = (255 & ((255 & this.int_8) >> 2 | (int)((uint)(255 & this.int_8) << 6)));
            this.int_8 = ((this.int_8 > 127) ? (this.int_8 - 256) : this.int_8);
            this.username = reader.ReadString();
            reader.ReadShort();
            this.currentHealth = new ShipPointsStub();
            this.currentHealth.Read(reader);
            this.maxXp = reader.ReadDouble();
            this.guild = reader.ReadString();
            this.xp = reader.ReadDouble();
            this.hasTreasureHunter = reader.ReadBool();
            this.int_2 = reader.ReadByte();
            this.int_2 = (int)(255u & ((uint)(255 & this.int_2) >> 7 | (uint)((uint)(255 & this.int_2) << 1)));
            this.int_2 = ((this.int_2 > 127) ? (this.int_2 - 256) : this.int_2);
            this.medallionId = reader.ReadByte();
            this.medallionId = (255 & ((255 & this.medallionId) >> 7 | (int)((uint)(255 & this.medallionId) << 1)));
            this.medallionId = ((this.medallionId > 127) ? (this.medallionId - 256) : this.medallionId);
            this.isRepairing = reader.ReadBool();
            this.position = new PositionStub(0, 0);
            this.position.X = reader.ReadShort();
            this.position.X = (65535 & ((65535 & this.position.X) << 1 | (int)((uint)(65535 & this.position.X) >> 15)));
            this.position.X = ((this.position.X > 32767) ? (this.position.X - 65536) : this.position.X);
            this.position.Y = reader.ReadShort();
            this.position.Y = (int)(65535u & ((uint)(65535 & this.position.Y) >> 2 | (uint)((uint)(65535 & this.position.Y) << 14)));
            this.position.Y = ((this.position.Y > 32767) ? (this.position.Y - 65536) : this.position.Y);
            this.maxBp = reader.ReadInt();
            this.maxBp = (int)((uint)this.maxBp >> 1 | (uint)((uint)this.maxBp << 31));
            reader.ReadShort(); //ID
            reader.ReadShort();
            reader.ReadShort();
            reader.ReadDouble();
            this.Level = reader.ReadByte();
            this.Level = (255 & ((255 & this.Level) >> 4 | (int)((uint)(255 & this.Level) << 4)));
            this.Level = ((this.Level > 127) ? (this.Level - 256) : this.Level); 
        }
    }
}
