using Fiddler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight
{
    public class EventStreamClient
    {
        public const string eventStreamAdress = "eventstream-829-weblog-05.bigpoint.net";
        public const int eventStreamPort = 443;

        public static void StartEventStream()
        {
            WinInetInterop.SetConnectionProxy($"127.0.0.1:7665");
            FiddlerApplication.BeforeRequest += FiddlerApplication_BeforeRequest;
            FiddlerApplication.BeforeResponse += FiddlerApplication_BeforeResponse;
            FiddlerApplication.Startup(7665, FiddlerCoreStartupFlags.DecryptSSL);
        }

        public static void StopEventStream()
        {
            WinInetInterop.RestoreSystemProxy();
            FiddlerApplication.Shutdown();
        }

        private static void FiddlerApplication_BeforeResponse(Session oSession)
        {
            oSession.bBufferResponse = true;
            if (oSession.fullUrl.Contains(eventStreamAdress))
            {
                oSession.utilDecodeResponse();
                Form1.form1.writeLine(oSession.GetRequestBodyAsString());
            }
        }

        private static void FiddlerApplication_BeforeRequest(Session oSession)
        {
            oSession.bBufferResponse = true;
        }
    }
}
