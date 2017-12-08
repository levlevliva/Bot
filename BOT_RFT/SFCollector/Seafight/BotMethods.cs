using SFCollector.Seafight.Messages;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace SFCollector.Seafight
{
    public class BotMethods
    {
        public static double targetentityId;
        public static int quarter = 0;
        public static Point moveTo_1 = new Point(60, 55);
        public static Point moveTo_2 = new Point(338, 230);
        public static Point moveTo_3 = new Point(310, -204);
        public static Point moveTo_4 = new Point(506, -54);
        public static Point moveTo_5 = new Point(300, 0);

        public static BoxInitMessage getClosestBox()
        {
            var point = new BoxInitMessage();
            try
            {
                int num = 2147483647;
                var enumerator = Client.entitys.Values.ToList().OfType<BoxInitMessage>();
                foreach (var box in enumerator)
                {
                    int num2 = (int)CalculateDistance(box.position);
                    if (num2 < num && (((box.Type == 5 || box.Type == 15) && Form1.form1.collectChests) || box.Type > 0) && (box.position != Account.position))
                    {
                        num = num2;
                        point = box;
                        targetentityId = box.entityId;
                    }
                }
            }
            catch (Exception ex)
            {
                writeLine(ex.ToString());
            }
            return point;
        }

        public static double CalculateDistance(int x1, int y1, int x2, int y2)
        {
            return Math.Sqrt(Math.Pow(x2 - x1, 2.0) + Math.Pow(y2 - y1, 2.0));
        }

        public static double CalculateDistance(int x, int y)
        {
            return CalculateDistance(Account.position.X, Account.position.Y, x, y);
        }

        public static double CalculateDistance(PositionStub point)
        {
            return CalculateDistance(point.X, point.Y);
        }

        public static string Between(string input_1, string input_2, string input_3)
        {
            try
            {
                int start = input_1.IndexOf(input_2);
                int end = input_1.IndexOf(input_3, start);
                return input_1.Substring(start + input_2.Length, end - start - input_2.Length);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Parsing Error!\nhelp.Between cut off!\n" + ex.Message);
                return string.Empty;
            }
        }

        public static bool getCompileTime(string server = "int1")
        {
            using (WebClient wc = new WebClient())
            {
                if (wc.DownloadString($"http://{server}.seafight.bigpoint.com/api/client/getCompileTime.php") == Program.compileTime)
                    return true;
            }
            return false;
        }

        public static bool AcceptAllCertifications(object sender, System.Security.Cryptography.X509Certificates.X509Certificate certification, System.Security.Cryptography.X509Certificates.X509Chain chain, System.Net.Security.SslPolicyErrors sslPolicyErrors)
        {
            return true;
        }

        public static string getBoxType(BoxInitMessage box)
        {
            var text = "Item";
            if (box.Type < 3)
            {
                return text;
            }
            else
            if (box.Type == 20)
            {
                text = "Cargo";
            }
            else
            if (box.Type == 17 || box.Type == 19)
            {
                text = "Meat";
            }
            else
            if (box.Type == 5)
            {
                text = "Chest";
            }
            else
            if (box.Type == 15)
            {
                text = "Event Chest";
            }
            else
            if (box.Type == 4)
            {
                text = "Candle";
            }
            else text = "Unkown Item";
            return text;
        }

        public static void ResourceIdHandler(string Message, List<string> Args)
        {
            int value = 0;
            switch (Message)
            {
                case "warmap:boxelp":
                    value = int.Parse(Args.First());
                    writeLine($"+ {value}x ELP.");
                    break;
                case "warmap:boxplate":
                    value = int.Parse(Args.First());
                    writeLine($"+ {value}x Armor Plate(s).");
                    break;
                case "warmap:boxpwoder":
                    value = int.Parse(Args.First());
                    writeLine($"+ {value}x Gun Powder.");
                    break;
                case "warmap:boxpearls":
                    value = int.Parse(Args.First());
                    BotSession.sessionpearls += value;
                    writeLine($"+ {value}x Pearl(s).");
                    break;
                case "warmap:boxadmiralpoints":
                    value = int.Parse(Args.First());
                    writeLine($"+ {value}x Admiral Point(s).");
                    break;
                case "warmap:reward":
                    value = int.Parse(Args.First());
                    if (Args.Contains("labels!ActionItems!1"))
                    {
                        writeLine($"+ {value}x Gun Powder.");
                    }
                    else
                    if (Args.Contains("labels!ActionItems!2"))
                    {
                        writeLine($"+ {value}x Armor Plate(s).");
                    }
                    else
                    if (Args.Contains("labels!Currency!1"))
                    {
                        writeLine($"+ {value}x Gold.");
                        BotSession.sessiongold += value;
                    }
                    else
                        if (Args.Contains("labels!Currency!2"))
                    {
                        writeLine($"+ {value}x Pearls.");
                        BotSession.sessionpearls += value;
                    }
                    else
                        if (Args.Contains("labels!Currency!3"))
                    {
                        writeLine($"+ {value}x Mojo(s).");
                        BotSession.sessionmojos += value;
                    }
                    else
                        if (Args.Contains("labels!Currency!4"))
                    {
                        writeLine($"+ {value}x Crystal(s).");
                    }
                    else
                        if (Args.Contains("labels!Currency!8"))
                    {
                        writeLine($"+ {value}x Cursed Soul(s).");
                    }
                    else
                        if (Args.Contains("labels!Currency!9"))
                    {
                        writeLine($"+ {value}x Radiant Soul(s).");
                    }
                    else
                    {
                        writeLine($"+ {value}x Unkown Item(s).");
                    }
                    break;
                case "warmap:boxhitpoints":
                    value = int.Parse(Args.First());
                    writeLine($"+ {value}x HitPoint(s).");
                    break;
                case "warmap:boxtrap":
                    value = int.Parse(Args.First());
                    writeLine($"- {value}x HitPoint(s).");
                    break;
                case "warmap:boxspeed":
                    writeLine($"+ {value}x Speed Point(s).");
                    break;
                case "warmap:boxeuro":
                    writeLine($"+ {value}x JackPot Dollar(s).");
                    break;
                case "warmap:boxep":
                    value = int.Parse(Args.First());
                    writeLine($"+ {value}x XP.");
                    BotSession.sessionxp += value;
                    break;
                case "warmap:boxmojo":
                    value = int.Parse(Args.First());
                    writeLine($"+ {value}x Mojo(s).");
                    BotSession.sessionmojos += value;
                    break;
                case "warmap:boxvoodoopoints":
                    value = int.Parse(Args.First());
                    writeLine($"+ {value}x Voodoopoint(s).");
                    break;
                case "warmap:notreasurechestkey":
                    Form1.form1.collectChests = false;
                    writeLine(Message);
                    break;
                default:
                    writeLine(Message);
                    break;
            }
        }

        private static void writeLine(string message)
        {
            Form1.form1.writeLine(message);
        }
    }
}
