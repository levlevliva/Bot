using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SFCollector.Seafight
{
    public class SeafightClientLogin
    {
        /// <summary>
        /// the username of the account.
        /// </summary>
        private static string Username { get; set; }
        /// <summary>
        /// the password of the account
        /// </summary>
        private static string Password { get; set; }
        /// <summary>
        /// the selected server.
        /// </summary>
        private static string Server { get; set; }

        public static HttpManager client { get; set; }
        /// <summary>
        /// the ip of the server.
        /// </summary>
        private static string _serverIp;
        /// <summary>
        /// the port of the server.
        /// </summary>
        private static int _serverPort;

        /// <summary>
        /// Login on the Seafight website.
        /// </summary>
        /// <param name="username">The username of the account.</param>
        /// <param name="password">The password of the account.</param>
        /// <returns></returns>
        public static void Login(String username, String password)
        {
            SeafightClientLogin.Username = username;
            SeafightClientLogin.Password = password;
            client = new HttpManager();
            const string seafightHomeUrl = "https://www.seafight.com/";
            if (!BotMethods.getCompileTime())
            {
                MessageBox.Show("Seafight has been updated!\nPlease wait for an update!", "Seafight Update!", MessageBoxButtons.OK);
                return;
            }
            var loginResult = client.Get(seafightHomeUrl);
            var match =
                Regex.Match(loginResult, "<form name=\"bgcdw_login_form\" method=\"post\" class=\"bgcdw_login_form\" action=\"(.*?)\">");
            var loginRequest = client.Post(WebUtility.HtmlDecode(match.Groups[1].ToString()), $"username={Username}&password={Password}");
            match = Regex.Match(loginRequest, "http://(.*).seafight.bigpoint.com");

            Server = match.Groups[1].ToString();
            Account.server = Server;
            string mapResponse = client.Get($"{match.Value}/index.es?action=internalMap");
            var host = BotMethods.Between(mapResponse, "&gameserver=", "&enableChat=");
            _serverIp = host.Split(':')[0];
            _serverPort = int.Parse(host.Split(':')[1]);
            Account.sessionId = BotMethods.Between(mapResponse, "&session_id=", "&user_id");
            Account.userId = double.Parse(BotMethods.Between(mapResponse, "&user_id=", "&user_level"));
            Account.projectId = int.Parse(BotMethods.Between(mapResponse, "&projectID=", "&logtype"));
            Account.rtvt = BotMethods.Between(mapResponse, "&RTVT=", "&cdnhost");
            Form1.form1.writeLine("Logged in with " + Account.projectId + "/" + Account.userId);
            Client.StartClient(_serverIp, _serverPort);
            return;
        }
    }
}
