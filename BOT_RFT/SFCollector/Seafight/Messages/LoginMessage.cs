using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class LoginMessage : Message
    {
        public int projectId;
        public double userId;
        public string sessionId;

        public LoginMessage(double userId, int projectId, string sessionId)
        {
            this.userId = userId;
            this.projectId = projectId;
            this.sessionId = sessionId;
        }

        public override int getID()
        {
            return 8019;
        }

        public override void Read(Reader reader)
        {
            throw new NotImplementedException();
        }

        public override byte[] Write()
        {
            List<byte[]> buffer = new List<byte[]>();
            buffer.Add(Reader.writeShort(getID()));
            buffer.Add(Reader.writeShort(0));
            buffer.Add(Reader.writeDouble(this.userId));
            buffer.Add(Reader.writeShort(65535 & ((65535 & this.projectId) >> 13 | (65535 & this.projectId) << 3)));
            buffer.Add(Reader.writeString(this.sessionId + "f"));
            return buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }
    }
}
