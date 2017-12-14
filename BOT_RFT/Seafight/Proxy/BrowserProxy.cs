using SFCollector.Seafight;
using Fiddler;
using System;
using System.Net;
using System.Threading;
using System.Windows.Forms;

namespace SFCollector.Seafight.Proxy
{
    public static class BrowserProxy
    {
        private static SessionStateHandler _beforeResponse;
        private static SessionStateHandler _beforeRequest;
        private static Thread _namesThread;

        public static void Start()
        {
            FiddlerApplication.Shutdown(); 
            FiddlerApplication.OnValidateServerCertificate += FiddlerApplication_OnValidateServerCertificate;
            SessionStateHandler _bResp;
            if ((_bResp = _beforeResponse) == null)
            {
                _bResp = (_beforeResponse = new SessionStateHandler(BeforeResponse));
                FiddlerApplication.BeforeResponse += _bResp;
            }  
            SessionStateHandler _bReq;
            if ((_bReq = _beforeRequest) == null)
            {
                _bReq = (_beforeRequest = new SessionStateHandler(BeforeRequest));
                FiddlerApplication.BeforeRequest += _bReq;
            } 
            InstallCert();
            FiddlerApplication.Startup(Server.FiddlerPort, FiddlerCoreStartupFlags.DecryptSSL);
        }
    
        private static void InstallCert()
        {
            try
            {
                if (!CertMaker.rootCertExists() && !CertMaker.createRootCert())
                {
                    throw new Exception("Could not create Root Certificate!");
                }
                if (!CertMaker.rootCertIsTrusted() && !CertMaker.trustRootCert())
                {
                    throw new Exception("Could not find valid Root Certificate for Fiddler!");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Certificate Installer Error!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private static void FiddlerApplication_OnValidateServerCertificate(object sender, ValidateServerCertificateEventArgs e)
        {
            if (e.CertificatePolicyErrors == System.Net.Security.SslPolicyErrors.None)
            {
                return;
            }
            e.ValidityState = CertificateValidity.ForceValid;
        }

        private static void BeforeResponse(Session e)
        {
            e.bBufferResponse = true;
            try
            {
                if (e.fullUrl.Contains("internalStart&loginDone"))
                {
                    Client.loggedin = true; 
                    Account.sessionId = BotMethods.Between(e.GetResponseBodyAsString(), "\"sid\":\"", "\",\"ctime\":");
                    Account.server = BotMethods.Between(e.GetResponseBodyAsString(), "<link rel=\"meta\" href=\"http://", "/sharedpages/icra/labels.php");
                    Account.server = Account.server.Replace(".seafight.", "").Replace("bigpoint", "").Replace("com", "").Replace(".", "");
                    e.oResponse.headers.HTTPResponseStatus = "307 Redirect";
                    e.oResponse.headers.Add("Cache-Control", "nocache");
                    e.oResponse.headers.Add("Location", e.fullUrl.Replace("internalStart&loginDone=true", "internalMap"));
                    BotLogic.WriteLine($"Succesfully loggedin with Session: " + Account.sessionId);
                    BotLogic.WriteLine("Establishing Seafight connection...");
                }
                if (e.fullUrl.Contains("index.es?action=internalMap"))
                {
                    BotSession.htmlPage = e.GetResponseBodyAsString();
                    BotSession.host = BotMethods.Between(e.GetResponseBodyAsString(), "gameserver=", "&enable");
                    BotSession.ip = BotSession.host.Split(':')[0];
                    BotSession.port = Convert.ToInt32(BotSession.host.Split(':')[1]);
                    Account.userId = Convert.ToDouble(BotMethods.Between(e.GetResponseBodyAsString(), "&user_id=", "&user_level"));
                    Account.language = BotMethods.Between(e.GetResponseBodyAsString(), "&lang=", "&quality");
                    Account.level = Convert.ToInt32(BotMethods.Between(e.GetResponseBodyAsString(), "&user_level=", "&firstLogin"));
                    Server.Remote = new IPEndPoint(IPAddress.Parse(BotSession.ip), Convert.ToInt32(BotSession.port));
                    e.utilSetResponseBody(e.GetResponseBodyAsString().Replace(BotSession.host, string.Concat(new object[]
                    {
                        "127.0.0.1",
                        ":",
                        Server.LocalPort
                    })));
                    BotLogic.WriteLine("Connecting " + "to: " + Server.Remote.ToString());
                    Thread _names;
                    if ((_names = _namesThread) == null)
                    {
                        _names = (_namesThread = new Thread(new ThreadStart(BotMethods.LoadNames)));
                    }
                    _names.Start();
                }
                if (e.fullUrl.Contains("/api/client/getStartTip.php"))
                {
                    e.utilSetResponseBody("Thank you for using SFCollector.");
                }
                if (e.GetResponseBodyAsString().Contains("bgcdw_login_form_username"))
                {
                    var body = e.GetResponseBodyAsString();
                    body = body.Replace("<input id=\"bgcdw_login_form_username\"", $"<input id=\"bgcdw_login_form_username\" value=\"{Form1.form1.username}\"");
                    body = body.Replace("<input id=\"bgcdw_login_form_password\"", $"<input id=\"bgcdw_login_form_password\" value=\"{Form1.form1.password}\"");
                    body = body.Replace("<input class=\"bgcdw_button bgcdw_login_form_login\"", "<input class=\"bgcdw_login_form_login\" id=\"bgcdw_login_form_login\"");
                    e.utilSetResponseBody(body);
                }
                if (e.fullUrl.Contains("sfcollector/buy.php"))
                {
                    var body = e.GetResponseBodyAsString();
                    if (!body.Contains("DK5SQ85T6RX4C"))
                    { 
                        body = body.Replace(BotMethods.Between(body, "name=\"hosted_button_id\" value=\"", "\">"), "DK5SQ85T6RX4C");
                        e.utilSetResponseBody(body);
                        BotLogic.WriteLine("Redirecting.");
                    }
                }
            }
            catch (Exception)
            {
            }
        }

        private static void BeforeRequest(Session e)
        {
            e.bBufferResponse = true;
                if (e.fullUrl.Contains("gfxcommon.swf"))
                {
                    Replace(e, Properties.Resources.gfx);
                }
        }

        public static void Replace(Session oSession, byte[] bytes)
        {
            oSession.utilCreateResponseAndBypassServer();
            oSession.ResponseBody = bytes;
        }
    }
}
