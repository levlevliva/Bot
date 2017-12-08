using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    class ShipRemoveMessage : Message //net.bigpoint.seafight.com.module.ship.class_528;
    {
        private int _version;
        public double entityId;
        public int projectId;
        public double attackerentityId;
        public int attackerprojectId; 
        public int animationID;
        

        public ShipRemoveMessage()
        {
        }

        public override byte[] Write()
        {
            return null;
        }

        public override int getID()
        {
            return -27586;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = (65535 & ((65535 & this._version) << 9 | (int)((uint)(65535 & this._version) >> 7)));
            this._version = ((this._version > 32767) ? (this._version - 65536) : this._version);
            this.animationID = reader.ReadShort();
            this.entityId = reader.ReadDouble();
            this.projectId = reader.ReadShort();
            this.projectId = (int)(65535 & ((65535 & this.projectId) >> 9 | (65535 & this.projectId) << 7));
            this.projectId = ((this.projectId > 32767) ? (this.projectId - 65536) : this.projectId);
            this.attackerentityId = reader.ReadDouble();
            this.attackerprojectId = reader.ReadShort();
            this.attackerprojectId = (int)(65535 & ((65535 & this.attackerprojectId) >> 9 | (65535 & this.attackerprojectId) << 7));
            this.attackerprojectId = ((this.attackerprojectId > 32767) ? (this.attackerprojectId - 65536) : this.attackerprojectId);
        }
    }
}
