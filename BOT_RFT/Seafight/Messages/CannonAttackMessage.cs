﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class CannonAttackMessage : Message //package_91.class_803;
    { 
        private int _version;
        public double entityId;
        public int projectId;
        public int ammoId;

        public CannonAttackMessage()
        { 
        }

        public CannonAttackMessage(double entityId, int projectId, int ammoId)
        {
            this.entityId = entityId;
            this.projectId = projectId;
            this.ammoId = ammoId;
        }

        public override byte[] Write()
        {
            List<byte[]> Buffer = new List<byte[]>();
            Buffer.Add(Reader.WriteShort(getID()));
            Buffer.Add(Reader.WriteShort(0));
            Buffer.Add(Reader.WriteShort(65535 & ((65535 & this.ammoId) >> 5 | (65535 & this.ammoId) << 11)));
            Buffer.Add(Reader.WriteDouble(entityId));
            Buffer.Add(Reader.WriteShort((int)(65535 & ((65535 & this.projectId) >> 8 | (65535 & this.projectId) << 9))));            
            return Buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }

        public override int getID()
        {
            return 29134;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = (65535 & ((65535 & this._version) << 12 | (int)((uint)(65535 & this._version) >> 4)));
            this._version = ((this._version > 32767) ? (this._version - 65536) : this._version);
            this.ammoId = reader.ReadShort();
            this.ammoId = (int)(65535 & ((65535 & this.ammoId) << 9 | (65535 & this.ammoId) >> 7));
            this.ammoId = ((this.ammoId > 32767) ? (this.ammoId - 65536) : this.ammoId);
            this.projectId = reader.ReadShort();
            this.projectId = (65535 & ((65535 & this.projectId) >> 4 | (65535 & this.projectId) << 12));
            this.projectId = ((this.projectId > 32767) ? (this.projectId - 65536) : this.projectId);
            this.entityId = reader.ReadDouble();
        }
    }
}
