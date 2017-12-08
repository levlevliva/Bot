using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight.Messages
{
    public class LoginMessage : Message //7.55, Main -> InitLoginMessage()
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
            return -29559;
        }

        public override void Read(Reader reader)
        {
            throw new NotImplementedException();
        }

        public override byte[] Write()
        {
            List<byte[]> buffer = new List<byte[]>();
            buffer.Add(Reader.WriteShort(getID()));
            buffer.Add(Reader.WriteShort(0));
            buffer.Add(Reader.WriteShort(65535 & ((65535 & this.projectId) << 7 | (65535 & this.projectId) >> 9)));
            buffer.Add(Reader.WriteDouble(this.userId));
            buffer.Add(Reader.WriteString(this.sessionId + "4"));
            return buffer.SelectMany(bytes => bytes).ToArray<byte>();
        }
    }
}
