using System;

namespace SFCollector.Seafight.Messages
{
    public class MonsterInitMessage : Message   //125.497;
    {
        private int _version;
        public double entityId; //name_4;
        public int projectId; //name_4
        public double taggingEntityId; //var_
        public int taggingEntityProjectId;
        public PositionStub position;
        public int maxHitpoints; //var_149;
        public int nameId; //NAME LOOKUP, var_476;, param2
        public int hitpoints; //var_110;
        public int var_35; //var_30;
        public int type; //name_5;
        public int var_452;  //var_452;
        public int harpoonId = 20;
        public string name;

        public MonsterInitMessage(double entityId, int projectId, int nameId, int hp, int maxHp, PositionStub position)
        {
            this.entityId = entityId;
            this.projectId = projectId;
            this.nameId = nameId;
            if (BotMethods.monsterNames.ContainsKey(nameId))
            {
                this.name = BotMethods.monsterNames[nameId];
            } else 
            {
                this.name = "Monster";
            }
            this.hitpoints = hp;
            this.maxHitpoints = maxHp;
            this.position = position;
        }

        public override int getID()
        {
            return -31750;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = 65535 & ((65535 & this._version) << 10 | (65535 & this._version) >> 6);
            this._version = this._version > 32767 ? (this._version - 65536) : (this._version);
            this.maxHitpoints = reader.ReadInt();
            this.maxHitpoints = this.maxHitpoints << 7 | this.maxHitpoints >> 25;
            this.position = new PositionStub(0, 0);
            this.position.X = reader.ReadShort();
            this.position.X = 65535 & ((65535 & this.position.X) >> 8 | (65535 & this.position.X) << 8);
            this.position.X = this.position.X > 32767 ? (this.position.X - 65536) : (this.position.X);
            this.position.Y = reader.ReadShort();
            this.position.Y = 65535 & ((65535 & this.position.Y) >> 2 | (65535 & this.position.Y) << 14);
            this.position.Y = this.position.Y > 32767 ? (this.position.Y - 65536) : (this.position.Y);
            this.hitpoints = reader.ReadInt();
            this.hitpoints = this.hitpoints << 6 | this.hitpoints >> 26;
            this.nameId = reader.ReadByte();
            this.nameId = 255 & ((255 & this.nameId) << 3 | (255 & this.nameId) >> 5);
            this.nameId = this.nameId > 127 ? (this.nameId - 256) : (this.nameId);     
            this.entityId = reader.ReadDouble();
            this.projectId = reader.ReadShort();
            this.projectId = 65535 & ((65535 & this.projectId) >> 7 | (65535 & this.projectId) << 9);
            this.projectId = this.projectId > 32767 ? (this.projectId - 65536) : (this.projectId);
            this.var_452 = reader.ReadByte();
            this.var_452 = 255 & ((255 & this.var_452) << 1 | (255 & this.var_452) >> 7);
            this.var_452 = this.var_452 > 127 ? (this.var_452 - 256) : (this.var_452);
            this.type = reader.ReadShort();
            this.var_35 = reader.ReadByte();
            this.var_35 = 255 & ((255 & this.var_35) << 3 | (255 & this.var_35) >> 5);
            this.var_35 = this.var_35 > 127 ? (this.var_35 - 256) : (this.var_35);
            this.taggingEntityId = reader.ReadDouble();
            this.taggingEntityProjectId = reader.ReadShort();
            this.taggingEntityProjectId = 65535 & ((65535 & this.taggingEntityProjectId) >> 6 | (65535 & this.taggingEntityProjectId) >> 10);
            this.taggingEntityProjectId = this.taggingEntityProjectId > 32767 ? (this.taggingEntityProjectId - 65536) : (this.taggingEntityProjectId);
            
        }

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }
    }
}
