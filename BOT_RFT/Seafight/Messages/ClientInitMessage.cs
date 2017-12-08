using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class ClientInitMessage : Message //package_7.class_35;
    {
        private int version;
        public int var_433;
        public double loginTime;
        public int var_481;
        public int timeout;
        public int var_469;
        public int var_454;
        public MapStub mapInfo;
        public int var_496;


        public override int getID()
        {
            return -31266;
        }

        public override void Read(Reader reader)
        {
            this.version = reader.ReadShort();
            this.version = 65535 & ((65535 & this.version) << 8 | (65535 & this.version) >> 8);
            this.version = this.version > 32767 ? (int)(this.version - 65536) : (int)(this.version);
            this.var_496 = reader.ReadShort();
            this.var_496 = 65535 & ((65535 & this.var_496) << 10 | (65535 & this.var_496) >> 6);
            this.var_496 = this.var_496 > 32767 ? (this.var_496 - 65536) : (this.var_496);
            this.var_469 = reader.ReadByte();
            this.var_469 = 255 & ((255 & this.var_469) << 3 | (255 & this.var_469) >> 5);
            this.var_469 = this.var_469 > 127 ? (this.var_469 - 256) : (this.var_469);
            this.var_454 = reader.ReadByte();
            this.var_454 = 255 & ((255 & this.var_454) >> 7 | (255 & this.var_454) << 1);
            this.var_454 = this.var_454 > 127 ? (this.var_454 - 256) : (this.var_454);
            this.var_481 = reader.ReadByte();
            this.var_481 = 255 & ((255 & this.var_481) << 7 | (255 & this.var_481) >> 1);
            this.var_481 = this.var_481 > 127 ? (this.var_481 - 256) : (this.var_481);  
            this.timeout = reader.ReadShort();
            this.timeout = 65535 & ((65535 & this.timeout) << 0 | (65535 & this.timeout) >> 16);
            this.timeout = this.timeout > 32767 ? (this.timeout - 65536) : (this.timeout);
            this.loginTime = reader.ReadDouble(); 
            this.var_433 = reader.ReadByte();
            this.var_433 = 255 & ((255 & this.var_433) >> 3 | (255 & this.var_433) << 5);
            this.var_433 = this.var_433 > 127 ? (this.var_433 - 256) : (this.var_433);
            reader.ReadShort();
            this.mapInfo = new MapStub();
            this.mapInfo.Read(reader);
        }

        public override byte[] Write()
        {
            throw new NotImplementedException();
        }
    }
}
