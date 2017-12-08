using SFCollector.Properties;
using SFCollector.Seafight;
using SFCollector.Seafight.Messages;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SFCollector
{
    public partial class Form1 : Form
    {
        public static Form1 form1;
        private bool running;
        public bool collectChests;
        public string username;
        public string password;
        private int repAtHp = 20;
        private int zoom = 4;

        public Form1()
        {
            InitializeComponent();
            form1 = this;
            PositionCalculator.startShipThread();
            new Thread(Draw) { IsBackground = true }.Start();
            new Thread(Bot) { IsBackground = true }.Start();
            loadSettings();
        }

        private void Bot()
        {
            Random random = new Random();
            while (true)
            {
                if (running && Client.loggedin)
                {
                    bool flag = false;
                    if (Account.mapId == 500)
                    {
                        writeLine("You have been Destroyed.");
                        SeafightMethods.Revive();
                        Thread.Sleep(1250);
                    }
                    if (Account.hitPoints < (Account.maxHitPoints * repAtHp / 100))
                    {
                        SeafightMethods.StartRepair();
                        Thread.Sleep(500);
                        while (Account.hitPoints < Account.maxHitPoints)
                        {
                            if (!Account.repairing)
                                break;
                            if (Account.hitPoints >= (Account.maxHitPoints * repAtHp++ / 100))
                                break;
                            Thread.Sleep(2500);
                        }
                        Thread.Sleep(50);
                    }
                    if (!flag)
                    {
                        var point = BotMethods.getClosestBox();
                        if (point != null && point.position != null && (point.position.X != 0 || point.position.Y != 0))
                        {
                            var mispoint = new Point(point.position.X + random.Next(-2, 3), point.position.Y + random.Next(-3, 2));
                            if (BotMethods.CalculateDistance(point.position.X, point.position.Y) >= 25)
                            {
                                SeafightMethods.Move(mispoint.X, mispoint.Y);
                            }
                            else
                            {
                                SeafightMethods.Move(point.position.X, point.position.Y);
                            }
                            writeLine($"Going to next {BotMethods.getBoxType(point)}[{BotMethods.targetentityId}] - X: {point.position.X}|Y: " + point.position.Y);
                            DateTime dateTime_ = DateTime.Now;
                            TimeSpan timeSpan = (DateTime.Now - dateTime_);
                            double value = BotMethods.targetentityId;
                            int num = 0;
                            while (BotMethods.targetentityId != 0.0 && timeSpan.TotalSeconds < 60 && running)
                            {
                                if (BotMethods.CalculateDistance(point.position.X, point.position.Y) <= 5)
                                {
                                    SeafightMethods.Move(point.position.X, point.position.Y);
                                }
                                if (Account.position.X == point.position.X && Account.position.Y == point.position.Y)
                                {
                                    num++;
                                    Thread.Sleep(100);
                                }
                                if (!Client.entitys.ContainsKey(value) || num > 40)
                                {
                                    break;
                                }
                                timeSpan = (DateTime.Now - dateTime_);
                                Thread.Sleep(10);
                            }
                            if (Client.entitys.ContainsKey(value) && timeSpan.TotalSeconds >= 59 || num > 40)
                            {
                                Client.entitys.Remove(value);
                            }
                            flag = true;
                        }
                    }
                    if (!flag)
                    {
                        switch (BotMethods.quarter)
                        {
                            case 0:
                                SeafightMethods.Move(BotMethods.moveTo_1.X + random.Next(-20, 20), BotMethods.moveTo_1.Y + random.Next(-20, 20));
                                BotMethods.quarter++;
                                break;
                            case 1:
                                SeafightMethods.Move(BotMethods.moveTo_4.X + random.Next(-20, 20), BotMethods.moveTo_4.Y + random.Next(-20, 20));
                                BotMethods.quarter++;
                                break;
                            case 2:
                                SeafightMethods.Move(BotMethods.moveTo_2.X + random.Next(-20, 20), BotMethods.moveTo_2.Y + random.Next(-20, 20));
                                BotMethods.quarter++;
                                break;
                            case 3:
                                SeafightMethods.Move(BotMethods.moveTo_3.X + random.Next(-20, 20), BotMethods.moveTo_3.Y + random.Next(-20, 20));
                                BotMethods.quarter++;
                                break;
                            case 4:
                                SeafightMethods.Move(BotMethods.moveTo_5.X + random.Next(-20, 20), BotMethods.moveTo_5.Y + random.Next(-20, 20));
                                BotMethods.quarter = 0;
                                break;
                        }
                        writeLine("Moving to next Position.");
                        Thread.Sleep(500);
                        while (Account.moving)
                        {
                            if (Account.mapId == 500)
                            {
                                writeLine("You have been Destroyed.");
                                SeafightMethods.Revive();
                                Thread.Sleep(250);
                                break;
                            }
                            var point = BotMethods.getClosestBox();
                            if (point != null && point.position != null && (point.position.X != 0 && point.position.Y != 0))
                            {
                                break;
                            }
                            if (!Account.moving)
                            {
                                switch (BotMethods.quarter)
                                {
                                    case 0:
                                        SeafightMethods.Move(BotMethods.moveTo_1.X + random.Next(-20, 20), BotMethods.moveTo_1.Y + random.Next(-20, 20));
                                        BotMethods.quarter++;
                                        break;
                                    case 1:
                                        SeafightMethods.Move(BotMethods.moveTo_4.X + random.Next(-20, 20), BotMethods.moveTo_4.Y + random.Next(-20, 20));
                                        BotMethods.quarter++;
                                        break;
                                    case 2:
                                        SeafightMethods.Move(BotMethods.moveTo_2.X + random.Next(-20, 20), BotMethods.moveTo_2.Y + random.Next(-20, 20));
                                        BotMethods.quarter++;
                                        break;
                                    case 3:
                                        SeafightMethods.Move(BotMethods.moveTo_3.X + random.Next(-20, 20), BotMethods.moveTo_3.Y + random.Next(-20, 20));
                                        BotMethods.quarter++;
                                        break;
                                    case 4:
                                        SeafightMethods.Move(BotMethods.moveTo_5.X + random.Next(-20, 20), BotMethods.moveTo_5.Y + random.Next(-20, 20));
                                        BotMethods.quarter = 0;
                                        break;
                                }
                                Thread.Sleep(500);
                            }
                            if (Account.hitPoints < Account.maxHitPoints && Account.hasRepairMaatLevel5 && !Account.repairing)
                            {
                                SeafightMethods.StartRepair();
                                Thread.Sleep(250);
                            }
                            Thread.Sleep(1000);
                        }
                    }
                }
                else
                {
                    Thread.Sleep(5000);
                }
            }
        }

        private void Draw()
        {
            while (true)
            {
                if (Client.loggedin)
                {
                    try
                    {
                        var boxes = Client.entitys.Values.ToList().OfType<BoxInitMessage>();
                        var bitmap = new Bitmap(minimap.Width, minimap.Height);
                        using (var g = Graphics.FromImage(bitmap))
                        {
                            foreach (var box in boxes)
                            {
                                DrawBox(g, box);
                            }  

                            DrawAccount(g);
                        }

                        var oldImage = minimap.Image;

                        try
                        {
                            if (minimap.InvokeRequired)
                            {
                                Invoke((MethodInvoker)delegate
                                {
                                    minimap.Image = bitmap;
                                    DrawStats();
                                    posLabel.Text = $"Position: X: {Account.position.X}|Y: " + Account.position.Y;
                                    if (!Text.Contains(Account.map))
                                        Text = "SFCollector - " + Account.map;
                                });
                            }
                            else
                            {
                                minimap.Image = bitmap;
                                DrawStats();
                                posLabel.Text = $"Position: X: {Account.position.X}|Y: " + Account.position.Y;
                                if (!Text.Contains(Account.map))
                                    Text = "SFCollector - " + Account.map;
                            }

                            if (oldImage != null)
                                oldImage.Dispose();

                        }
                        catch (Exception)
                        {
                        }
                        Thread.Sleep(100);
                    }
                    catch (Exception) { Thread.Sleep(1000); }
                }
            }
        }

        private void DrawStats()
        {
            sessionboxeslabel.Text = BotSession.sessionboxes.ToString();
            sessiongoldlabel.Text = BotSession.sessiongold.ToString();
            sessionmojoslabel.Text = BotSession.sessionmojos.ToString();
            sessionmonsterslabel.Text = BotSession.sessionmonsters.ToString();
            sessionnpcslabel.Text = BotSession.sessionpcs.ToString();
            sessionpearlslabel.Text = BotSession.sessionpearls.ToString();
            sessionxplabel.Text = BotSession.sessionxp.ToString();
        }

        private void DrawBox(Graphics g, BoxInitMessage box)
        {
            var pos = Scale(new Point(box.position.X, box.position.Y));
            var color = Color.Yellow;
            if (box.Type < 3)
            {
                color = Color.Gold;
            }
            else
            if (box.Type == 20)
            {
                color = Color.Purple;
            }
            else
            if (box.Type == 17 || box.Type == 19)
            {
                color = Color.Pink;
            }
            else
            if (box.Type == 5)
            {
                color = Color.LightSkyBlue;
            }
            else
            if (box.Type == 15)
            {
                color = Color.Magenta;
            }
                g.DrawString(BotMethods.getBoxType(box) + " [" + box.Type + "]", this.Font, new SolidBrush(color), (float)(pos.X - 20), (float)(pos.Y - 35));
            g.FillPie(new SolidBrush(color), pos.X, pos.Y, 4, 4, 0, 360);
        }

        private void DrawAccount(Graphics g)
        {
            Point pos = new Point((minimap.Width / 2), (minimap.Height / 2));
            g.FillPie(new SolidBrush(Color.Green), pos.X, pos.Y, 15, 15, 0, 360);
            g.DrawString($"VP: {Account.voodooPoints}/{Account.maxVoodooPoints}", this.Font, new SolidBrush(Color.Purple), pos.X + 20, pos.Y + 15);
            g.DrawString($"HP: {Account.hitPoints}/{Account.maxHitPoints}", this.Font, new SolidBrush(Color.Green), pos.X + 20, pos.Y + 37);
        }

        public Point Scale(Point point)
        {
            var _out = default(Point);
            _out.X = Convert.ToInt32(point.X) - Account.position.X;
            _out.Y = Convert.ToInt32(point.Y) - Account.position.Y;
            _out.X *= zoom;
            _out.Y *= zoom;
            return new Point((minimap.Width / 2) + _out.X, (minimap.Height / 2) + _out.Y);
        }

        public void writeLine(string message)
        {
            if (InvokeRequired)
            {
                Invoke(new Action(() => writeLine(message)));
                return;
            }
            try
            {
                message = "[" + DateTime.Now.ToString("T") + "] " + message + "\n";
                logBox.Text += message;
                if (logBox.Lines.Length > 99)
                {
                    string[] newLines = new string[50];
                    Array.Copy(logBox.Lines, 1, newLines, 0, 50);
                    logBox.Lines = newLines;
                }
                logBox.SelectionStart = logBox.Text.Length;
                logBox.ScrollToCaret();
            }
            catch (Exception)
            {
            }
        }

        private void saveSettings()
        {
            Settings.Default.username = this.usernameBox.Text;
            Settings.Default.password = this.passwordBox.Text;
            Settings.Default.zoom = this.zoomBar.Value;
            Settings.Default.collectChests = this.collectChestsCheckbox.Checked;
            Settings.Default.repAtHp = (int)this.repAtHpNmrcud.Value;
            Settings.Default.Save();
        }

        private void loadSettings()
        {
            this.usernameBox.Text = Settings.Default.username;
            this.passwordBox.Text = Settings.Default.password;
            this.zoomBar.Value = Settings.Default.zoom;
            this.collectChestsCheckbox.Checked = Settings.Default.collectChests;
            this.repAtHpNmrcud.Value = Settings.Default.repAtHp;
        }

        private void startButton_Click(object sender, EventArgs e)
        {
            running = true;
        }

        private void stopbutton_Click(object sender, EventArgs e)
        {
            running = false;
        }

        private void loginButton_Click(object sender, EventArgs e)
        {
            Client.loggedin = false;
            Client.StopClient();
            new Task(() => { SeafightClientLogin.Login(username = usernameBox.Text, password = passwordBox.Text); }).Start();
            writeLine("Logging in.");
        }

        private void minimap_MouseClick(object sender, MouseEventArgs e)
        {
            if (Client.loggedin && e.Button == MouseButtons.Left)
            {
                int num = e.X - this.minimap.Width / 2;
                int num2 = e.Y - this.minimap.Height / 2;
                num /= zoom;
                num2 /= zoom;
                writeLine("Moving to X: " + num + Account.position.X + "|Y: " + num2 + Account.position.Y);
                SeafightMethods.Move(num + Account.position.X, num2 + Account.position.Y);
            }
        }

        private void zoomBar_ValueChanged(object sender, EventArgs e)
        {
            zoom = zoomBar.Value;
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            PositionCalculator.stopShipThread();
            Client.StopClient();
            EventStreamClient.StopEventStream();
            saveSettings();
        }

        private void collectChestsCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            collectChests = collectChestsCheckbox.Checked;
        }

        private void repAtHpNmrcud_ValueChanged(object sender, EventArgs e)
        {
            repAtHp = (int)repAtHpNmrcud.Value;
        }
    }
}
