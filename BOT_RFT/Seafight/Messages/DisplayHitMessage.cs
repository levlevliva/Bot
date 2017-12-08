using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class DisplayHitMessage : Message //package_89.class_437;
    {
        private int _version;
        public bool criticalhit; //var_1468;
        public ShipPointsStub damage; //var_134;
        public double defenderId; //var_250;
        public int defenderProjectId;
        public double attackerId; //var_50;
        public int attackerProjectId;
        public int animationId; //var_128;
        public int effectId; //var_85;

        public const int HITEFFECT_NONE = 0;
        public const int HITEFFECT_BLACKPOWDER = 1;
        public const int HITEFFECT_ARMOURPLATES = 2;
        public const int HITEFFECT_BOTH = 3;
        public const int HITEFFECT__MAX = 4;

        public DisplayHitMessage()
        {
            
        }

        public override byte[] Write()
        {
            return null;
        }

        public override int getID()
        {
            return 3134;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = 65535 & ((65535 & this._version) >> 8 | (65535 & this._version) << 8);
            this._version = this._version > 32767 ? (int)(this._version - 65536) : (int)(this._version);
            reader.ReadShort();
            this.damage = new ShipPointsStub();
            this.damage.Read(reader);
            this.criticalhit = reader.ReadBool();
            this.defenderId = reader.ReadDouble();
            this.defenderProjectId = reader.ReadShort();
            this.defenderProjectId = 65535 & ((65535 & this.defenderProjectId) << 14 | (65535 & this.defenderProjectId) >> 2);
            this.defenderProjectId = this.defenderProjectId > 32767 ? (int)(this.defenderProjectId - 65536) : (int)(this.defenderProjectId);
            this.effectId = reader.ReadShort();
            this.attackerId = reader.ReadDouble();
            this.attackerProjectId = reader.ReadShort();
            this.attackerProjectId = 65535 & ((65535 & this.attackerProjectId) << 14 | (65535 & this.attackerProjectId) >> 2);
            this.attackerProjectId = this.attackerProjectId > 32767 ? (int)(this.attackerProjectId - 65536) : (int)(this.attackerProjectId);
            this.animationId = reader.ReadShort();
            
        }
    }
}
