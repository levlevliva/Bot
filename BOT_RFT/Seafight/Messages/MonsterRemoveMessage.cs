namespace SFCollector.Seafight.Messages
{
    public class MonsterRemoveMessage : Message //package_122.class_428;
    {
        private int _version;
        public int projectId;
        public double entityId;

        public MonsterRemoveMessage()
        {          
        }

        public override int getID()
        {
            return 23168;
        }

        public override void Read(Reader reader)
        {
            this._version = reader.ReadShort();
            this._version = (65535 & ((65535 & this._version) << 2 | (int)((uint)(65535 & this._version) >> 14)));
            this._version = ((this._version > 32767) ? (this._version - 65536) : this._version);
            this.entityId = reader.ReadDouble();
            this.projectId = reader.ReadShort();
            this.projectId = (65535 & ((65535 & this.projectId) << 3 | (int)((uint)(65535 & this.projectId) >> 13)));
            this.projectId = ((this.projectId > 32767) ? (this.projectId - 65536) : this.projectId);  
        }

        public override byte[] Write()
        {
            throw new System.NotImplementedException();
        }
    }
}
