using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class ShipInitMessage : Message //net.bigpoint.seafight.com.module.ship.class_544;
    {
        private int _version;
        public ShipPointsStub pointsCurrent; //var_170;
        public ShipPointsStub pointsMax; //var_240;
        public PositionStub position; //name_6;
        public double entityId; //name_4;
        public int projectId;
        public double taggingEntityId; //var_
        public int taggingProjectId;
        public int var_30; //var_30;
        public int var_865; //var_865;
        public int var_53; //var_53;
        public int var_906; //var_90X;
        public int var_496; //var_496;
        public int nameId; //var_17;
        public int var_737; //var_737;
        public int designId; //name_14;
        public int name_28; //name_28;
        public int var_184; //var_184;
        public List<int> var_167; //var_167;
        public List<PositionStub> route; //var_114;
        public List<ShipEntityInfoType> name_32; //name_32;
        public string name = "NPC";
        public double speed;
        public double boardinAttackValue;
        public bool moving;
        public bool boarded;
        public bool boardable;
        public bool usePowder = false;
        public bool usePlates = false;
        public bool useBoard = false;
        public int ammoId = 5;

        public ShipInitMessage()
        {
        }

        public ShipInitMessage(double entityId, int projectId, int nameId, int hp, int maxHp, PositionStub position, List<PositionStub> route)
        {
            this.entityId = entityId;
            this.projectId = projectId;
            this.nameId = nameId;
            if (BotMethods.npcNames.ContainsKey(nameId))
            {
                this.name = BotMethods.npcNames[nameId];
            }
            this.pointsCurrent = new ShipPointsStub(hp, 0);
            this.pointsMax = new ShipPointsStub(maxHp, 0);
            this.position = position;
            this.route = route;
        }

        public override int getID()
        {
            return -15412;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = (int)(65535u & ((uint)(65535 & this._version) >> 4 | (uint)((uint)(65535 & this._version) << 12)));
            this._version = ((this._version > 32767) ? (this._version - 65536) : this._version);
            this.name_28 = reader.ReadByte();
            this.name_28 = 255 & ((255 & this.name_28) >> 0 | (255 & this.name_28) << 8);
            this.name_28 = this.name_28 > 127 ? (this.name_28 - 256) : (this.name_28);
            reader.ReadShort();
            this.pointsCurrent = new ShipPointsStub();
            this.pointsCurrent.Read(reader);
            this.nameId = reader.ReadShort();
            this.nameId = 65535 & ((65535 & this.nameId) << 2 | (65535 & this.nameId) >> 14);
            this.nameId = this.nameId > 32767 ? (this.nameId - 65536) : (this.nameId);
            this.var_865 = reader.ReadShort();
            this.usePowder = reader.ReadBool();
            this.var_737 = reader.ReadShort();
            this.var_496 = reader.ReadShort();
            this.var_496 = 65535 & ((65535 & this.var_496) << 15 | (65535 & this.var_496) >> 1);
            this.var_496 = this.var_496 > 32767 ? (this.var_496 - 65536) : (this.var_496);
            this.var_184 = reader.ReadShort();
            this.name = reader.ReadString();
            this.taggingEntityId = reader.ReadDouble();
            this.taggingProjectId = reader.ReadShort();
            this.taggingProjectId = 65535 & ((65535 & this.taggingProjectId) << 15 | (65535 & this.taggingProjectId) >> 1);
            this.taggingProjectId = this.taggingProjectId > 32767 ? (this.taggingProjectId - 65536) : (this.taggingProjectId);
            this.designId = reader.ReadShort();
            this.designId = 65535 & ((65535 & this.designId) >> 9 | (65535 & this.designId) << 7);
            this.designId = this.designId > 32767 ? (this.designId - 65536) : (this.designId);
            this.var_906 = reader.ReadShort();
            reader.ReadShort();
            this.pointsMax = new ShipPointsStub();
            this.pointsMax.Read(reader);
            this.useBoard = reader.ReadBool();
            this.position = new PositionStub(0, 0);
            this.position.X = reader.ReadShort();
            this.position.X = 65535 & ((65535 & this.position.X) >> 1 | (65535 & this.position.X) << 15);
            this.position.X = this.position.X > 32767 ? (this.position.X - 65536) : (this.position.X);
            this.position.Y = reader.ReadShort();
            this.position.Y = 65535 & ((65535 & this.position.Y) >> 0 | (65535 & this.position.Y) << 16);
            this.position.Y = this.position.Y > 32767 ? (this.position.Y - 65536) : (this.position.Y);
            var i = 0;
            var max = reader.ReadShort();
            this.route = new List<PositionStub>();
            while (i < max)
            {
                reader.ReadShort();
                var pos = new PositionStub(0, 0);
                pos.Read(reader);
                this.route.Add(pos);
                i++;
            }
            this.entityId = reader.ReadDouble();
            this.projectId = reader.ReadShort();
            this.projectId = 65535 & ((65535 & this.projectId) << 9 | (65535 & this.projectId) >> 7);
            this.projectId = this.projectId > 32767 ? (this.projectId - 65536) : (this.projectId);
            i = 0;
            max = reader.ReadByte();
            this.var_167 = new List<int>();
            while (i < max)
            {
                this.var_167.Add(reader.ReadShort());
                i++;
            }
            this.usePlates = reader.ReadBool();
            this.var_53 = reader.ReadShort();
            i = 0;
            max = reader.ReadByte();
            this.name_32 = new List<ShipEntityInfoType>();
            while (i < max)
            {
                reader.ReadShort();
                var shipEntityInfoType = new ShipEntityInfoType();
                shipEntityInfoType.Read(reader);
                this.name_32.Add(shipEntityInfoType);
                i++;
            }
            this.var_30 = reader.ReadByte();
            this.var_30 = 255 & ((255 & this.var_30) << 0 | (255 & this.var_30) >> 8);
            this.var_30 = this.var_30 > 127 ? (this.var_30 - 256) : (this.var_30); 
        }

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }
    }
}
