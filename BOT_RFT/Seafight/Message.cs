using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight
{
    public abstract class Message
    {
        public abstract int getID();
        public abstract void Read(Reader reader);
        public abstract byte[] Write();
    }
}
