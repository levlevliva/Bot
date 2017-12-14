using Fiddler;
using SFCollector.Properties;
using SFCollector.Seafight;
using SFCollector.Seafight.Messages;
using SFCollector.Seafight.Proxy;
using SFCollector.Util;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Globalization;
using System.Resources;

namespace SFCollector
{
    public partial class Form1 : Form
    {
        public static Form1 form1;
        public delegate void writerDelegate(string new_item);
        public writerDelegate delegateWriter;
        public delegate void bonusmapDelegate();
        public bonusmapDelegate bonusmap;
        public string username = string.Empty;
        public string password;
        private DateTime loginTime;
        private Thread localThread;
        private HelpTools help;
        public int loadNames = 0;
        //language shit starts
        ResourceManager res_man;    
        CultureInfo cul;
        //log language shit
        int loginfirst = new int();

        //language shit stops
       
        public Form1()
        {
            CertMaker.createRootCert();
            CertMaker.trustRootCert();
            InitializeComponent();
            form1 = this;
            help = new HelpTools();
            delegateWriter = new Form1.writerDelegate(this.writeLine);
            bonusmap = new Form1.bonusmapDelegate(this.UpdateBMList);
            this.loadSettings();
            this.Text = "SFCollector - V." + Program.version;
            this.StartLocalProxy();
        }

        private void LoadDefaultGridItems(bool npcs = true, bool monsters = true)
        {
            if (npcs)
            {
                npcGridView.Rows.Clear();
                npcGridView.Rows.Add(new object[] { false, "Admiral Jack", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Admiral Sinclare", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Admiral Calico", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Admiral Kiribati", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Admiral Lucia", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Admiral Quintor", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Blackbeard's Pirates", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Calico's Jack", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Rackham", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Red Korsar", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Los Renegados", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Wild 13", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Tortuga Gang", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Sinclare's Men", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Rat Pack", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Calico's Men", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Los Amistadores", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Morgan's Buccaneers", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Flying Dutchman", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Tiamat", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Kilimatu", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Kiribati", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Kiliwallis", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Kokelau", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Trinidad", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Santa Lucia", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Esmeralda", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Almirante", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Almiranto", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Marant", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Picasso", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Syanite", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Boreas", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Magmor", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Marduk", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Notos", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Quintor", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Vuur", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Swashbuckler", "Hollowballs (20)", false, false, false });
                npcGridView.Rows.Add(new object[] { false, "Drake's Marauder", "Hollowballs (20)", false, false, false });
            }
            if (monsters)
            {
                monsterGridView.Rows.Clear();
                monsterGridView.Rows.Add(new object[] { false, "Moby Dick", "Bronze Harpoons (50)"});
                monsterGridView.Rows.Add(new object[] { false, "Trankus", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Serena", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Orca", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Azzlan", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Azurenos", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Gigantur", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Octalus", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Glasciadon", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Raskvarik", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Valocto", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Zirkzeaa", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Aligant", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Elmato", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Limfirii", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Skiliadon", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Ghirdora", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Bicuvila", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Brapiapoda", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Vilundara", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Taipan", "Bronze Harpoons (50)" });
                monsterGridView.Rows.Add(new object[] { false, "Big Taipan", "Bronze Harpoons (50)" });
            }
        }

        private void UpdateBMList()
        {
            if (InvokeRequired)
            {
                Invoke(new MethodInvoker(UpdateBMList));
                return;
            }
            if (Account.bonusMaps.Count >= 1)
            {
                this.bonusmapCombobox.Items.Clear();
                foreach (var item in Account.bonusMaps.Values)
                {
                    if (!this.bonusmapCombobox.Items.Contains(BotMethods.MapHandler(item.mapId)))
                    {
                        this.bonusmapCombobox.Items.Add(BotMethods.MapHandler(item.mapId) + " (" + item.amount + ")");
                    }
                }
            }
            BotLogic.WriteLine("Bonusmaps Loaded.");
        }

        private void DrawStats()
        {
            try
            {
                if (Server.Connected && Client.loggedin)
                {
                    sessionboxeslabel.Text = BotSession.sessionboxes.ToString();
                    sessiongoldlabel.Text = BotSession.sessiongold.ToString();
                    sessionmojoslabel.Text = BotSession.sessionmojos.ToString();
                    sessionmonsterslabel.Text = BotSession.sessionmonsters.ToString();
                    sessionnpcslabel.Text = BotSession.sessionpcs.ToString();
                    sessionpearlslabel.Text = BotSession.sessionpearls.ToString();
                    sessionxplabel.Text = BotSession.sessionxp.ToString();
                    positionLabel.Text = "X: " + Account.position.X + "|Y: " + Account.position.Y;
                    if (Account.onRaid)
                    {
                        Text = "SFCollector - " + (Account.raidMedallion == 38 ? "Sunmap" : "Behemoth");
                    } else if (!Text.Contains(Account.username))
                    {
                        Text = "SFCollector - " + Program.version + " - " + Account.username;
                    }
                }
                else
                {
                    if (BotSession.logginIn)
                    {
                        var ts = DateTime.Now.Subtract(this.loginTime);
                        if (ts.TotalSeconds >= 300.0)
                        {
                            BotSession.lostConnection = true;
                        }
                    }
                }
                if (BotSession.lostConnection)
                {
                    BotSession.lostConnection = false;
                    BotLogic.WriteLine("Restarting Bot...");
                    this.LoginMethod();
                    Thread.Sleep(5000);
                    BotLogic.StartBotThread();
                }
            }
            catch (Exception ex)
            {
                BotLogic.WriteLine(ex.ToString());
            }
        }

        public void LoginMethod()
        {
                try
                {
                    BotMethods.ClearCache();
                    BotLogic.WriteLine("Cache cleaned.");
                }
                catch (Exception)
                {
                    BotLogic.WriteLine("There was an error while cleaning cache!");
                }
            try
            {
                var _compileTime = BotMethods.GetCompileTime();
                var _retrys = 0;
                while (_compileTime.Length < 16 && _retrys < 10)
                {
                    _compileTime = BotMethods.GetCompileTime();
                    _retrys++;
                    Thread.Sleep(1000);
                }
                if (_retrys >= 10)
                {
                    BotLogic.WriteLine("Failed to get a valid compileTime! Retrying in a few seconds.");
                    Thread.Sleep(60000);
                    LoginMethod();
                }
                if (_compileTime == Program.compileTime)
                {
                    this.loginTime = DateTime.Now;
                    Server.Connected = false;
                    Client.loggedin = false;
                    BotSession.logginIn = true;
                    BotLogic.WriteLine("Loading Seafight page...");
                    this.webBrowser1.Navigate("http://www.seafight.com/");
                    return;
                }
                BotLogic.WriteLine("------------------------->SEAFIGHT UPDATE<-------------------------");
                BotLogic.WriteLine("Seafight has been updated, please wait for the next bot update!");
            }
            catch (Exception ex)
            {
                BotLogic.WriteLine("Could not login!\n" + ex.Message);
            }
        }

        public void writeLine(string message)
        {
            if (InvokeRequired)
            {
                Invoke(new Action(() => writeLine(message)));
                return;
            }
            int num = 0;
            int num2 = 0;
            string[] lines = this.logBox.Lines;
            string[] array = lines;
            for (int i = 0; i < array.Length; i++)
            {
                string text = array[i];
                if (num >= 2)
                {
                    lines[num - 1] = text;
                }
                num++;
            }
            if (lines.Length > 1)
            {
                num2 = lines.Length - 2;
            }
            message = "[" + DateTime.Now.ToString("T") + "] - " + message;
            lines[num2] = message;
            this.logBox.Lines = lines;
            this.logBox.SelectionStart = this.logBox.Text.Length;
            this.logBox.ScrollToCaret();
        }

        private void CreateSettings()
        {
            BotLogic.collectBoxes = this.collectGlittersCheckbox.Checked;
            BotLogic.collectChests = this.collectChestsCheckbox.Checked;
            BotLogic.collectCargoBoxes = this.collectCargoCheckbox.Checked;
            BotLogic.collectEventChests = this.collectEventChestsCheckbox.Checked;
            BotLogic.collectLionChests = this.collectLionChestsCheckbox.Checked;
            BotLogic.collectMeat = this.collectMeatCheckbox.Checked;
            BotLogic.repAtHp = (int)this.repAtHpNmrcud.Value;
            BotLogic.shootMonsters = this.shootMonstersCheckbox.Checked;
            BotLogic.shootRaidBoss = this.shootBossCheckbox.Checked;
            BotLogic.autoJoinRaid = this.autoJoinRaidCheckbox.Checked;
            BotLogic.repAtHpRaid = (int)this.raidRepAtNumeric.Value;
            BotLogic.raidNpcAmmoId = BotMethods.AmmoHandler(this.raidNpcAmmoComboBox.Text);
            BotLogic.raidBossAmmoId = BotMethods.AmmoHandler(this.shootBossAmmoComboBox.Text);
            BotLogic.shootNPCs = this.shootNpcsCheckbox.Checked;
            BotLogic.prioNPCs = this.prioNPCsCheckbox.Checked;
            BotLogic.collectBoxesWhileAttacking = this.collectWhileAttackCheckbox.Checked;
            BotLogic.onlyFullHPNpcs = this.onlyFullHPNPCsCheckBox.Checked;
            BotLogic.autoJoinBonusmap = this.autoJoinBonusmapCheckbox.Checked;
            BotLogic.repAtHpBm = (int)this.repAtBonusmapNumeric.Value;
            BotLogic.bonusMapAmmoId = BotMethods.AmmoHandler(bonusmapAmmoTextbox.Text);
            BotLogic.prioMonsters = this.prioritizeMonstersCheckbox.Checked;
            BotLogic.attacking = this.autoStartCheckbox.Checked ? 16 : 0;
            try
            {
                BotLogic.entitys = new Dictionary<string, bool>();
                for (int i = 0; i < npcGridView.Rows.Count; i++)
                {
                    foreach (var cell in npcGridView.Rows[i].Cells)
                    {
                        if (cell is DataGridViewCheckBoxCell)
                        {
                            if ((cell as DataGridViewCheckBoxCell).Value == null)
                            {
                                (cell as DataGridViewCheckBoxCell).Value = "0";
                            }
                            if (((cell as DataGridViewCheckBoxCell).Value.ToString() != "0" && (cell as DataGridViewCheckBoxCell).Value.ToString() != "1"))
                            {
                                (cell as DataGridViewCheckBoxCell).Value = "0";
                            }
                        }
                    }
                    if (!BotLogic.entitys.ContainsKey(npcGridView.Rows[i].Cells[1].Value.ToString() + "|" + npcGridView.Rows[i].Cells[2].Value.ToString() + "|" + npcGridView.Rows[i].Cells[3].Value.ToString() + "|" + npcGridView.Rows[i].Cells[4].Value.ToString() + "|" + npcGridView.Rows[i].Cells[5].Value.ToString()))
                    {
                        BotLogic.entitys.Add(npcGridView.Rows[i].Cells[1].Value.ToString() + "|" + npcGridView.Rows[i].Cells[2].Value.ToString() + "|" + npcGridView.Rows[i].Cells[3].Value.ToString() + "|" + npcGridView.Rows[i].Cells[4].Value.ToString() + "|" + npcGridView.Rows[i].Cells[5].Value.ToString(), (bool)(npcGridView.Rows[i].Cells[0].Value.ToString() == "1"));
                    }
                }
                for (int i = 0; i < monsterGridView.Rows.Count; i++)
                {
                    foreach (var cell in monsterGridView.Rows[i].Cells)
                    {
                        if (cell is DataGridViewCheckBoxCell)
                        {
                            if ((cell as DataGridViewCheckBoxCell).Value == null)
                            {
                                (cell as DataGridViewCheckBoxCell).Value = "0";
                            }
                            if (((cell as DataGridViewCheckBoxCell).Value.ToString() != "0" && (cell as DataGridViewCheckBoxCell).Value.ToString() != "1"))
                            {
                                (cell as DataGridViewCheckBoxCell).Value = "0";
                            }
                        }
                    }
                    if (!BotLogic.entitys.ContainsKey(monsterGridView.Rows[i].Cells[1].Value.ToString() + "|" + monsterGridView.Rows[i].Cells[2].Value.ToString()))
                    {
                        BotLogic.entitys.Add(monsterGridView.Rows[i].Cells[1].Value.ToString() + "|" + monsterGridView.Rows[i].Cells[2].Value.ToString(), (bool)(monsterGridView.Rows[i].Cells[0].Value.ToString() == "1"));
                    }
                }
            } catch (Exception ex)
            {
                writeLine("An unknown Error occured while saving Settings!\n" + ex);
            }
        }

        private void saveSettings()
        {
            Settings.Default.username = this.usernameBox.Text;
            Settings.Default.password = this.passwordBox.Text;
            Settings.Default.collectChests = this.collectChestsCheckbox.Checked;
            Settings.Default.repAtHp = (int)this.repAtHpNmrcud.Value;
            Settings.Default.collectGlitters = this.collectGlittersCheckbox.Checked;
            Settings.Default.collectCargo = this.collectCargoCheckbox.Checked;
            Settings.Default.collectEventChests = this.collectEventChestsCheckbox.Checked;
            Settings.Default.collectLionChests = this.collectLionChestsCheckbox.Checked;
            Settings.Default.collectMeat = this.collectMeatCheckbox.Checked;
            Settings.Default.shootMonsters = this.shootMonstersCheckbox.Checked;
            Settings.Default.autoJoinRaid = this.autoJoinRaidCheckbox.Checked;
            Settings.Default.raidNpcAmmo = this.raidNpcAmmoComboBox.Text;
            Settings.Default.raidBossAmmo = this.shootBossAmmoComboBox.Text;
            Settings.Default.shootRaidBoss = this.shootBossCheckbox.Checked;
            Settings.Default.repAtHpRaid = (int)this.raidRepAtNumeric.Value;
            Settings.Default.autoStartBot = this.autoStartCheckbox.Checked;
            Settings.Default.shootNPCs = this.shootNpcsCheckbox.Checked;
            Settings.Default.prioNPCs = this.prioNPCsCheckbox.Checked;
            Settings.Default.collectBoxesWhileAttacking = this.collectWhileAttackCheckbox.Checked;
            Settings.Default.onlyFullHPNPCs = this.onlyFullHPNPCsCheckBox.Checked;
            Settings.Default.autoJoinBonusmap = this.autoJoinBonusmapCheckbox.Checked;
            Settings.Default.bonusMapRepAtHp = (int)this.repAtBonusmapNumeric.Value;
            Settings.Default.bonusMapAmmo = this.bonusmapAmmoTextbox.Text;
            Settings.Default.height = this.Height;
            Settings.Default.width = this.Width;
            Settings.Default.prioMonsters = this.prioritizeMonstersCheckbox.Checked;
            Settings.Default.monsters = new System.Collections.Specialized.StringCollection();
            foreach (DataGridViewRow row in monsterGridView.Rows)
            {
                Settings.Default.monsters.Add($"{row.Cells[0].Value}|{row.Cells[1].Value}|{row.Cells[2].Value}");
            }
            Settings.Default.NPCs = new System.Collections.Specialized.StringCollection();
            foreach (DataGridViewRow row in npcGridView.Rows)
            {
                Settings.Default.NPCs.Add($"{row.Cells[0].Value}|{row.Cells[1].Value}|{row.Cells[2].Value}|{row.Cells[3].Value}|{row.Cells[4].Value}|{row.Cells[5].Value}");
            }
            Settings.Default.Save();
        }

        private void loadSettings()
        {
            this.usernameBox.Text = Settings.Default.username;
            this.passwordBox.Text = Settings.Default.password;
            this.collectChestsCheckbox.Checked = Settings.Default.collectChests;
            this.repAtHpNmrcud.Value = Settings.Default.repAtHp;
            this.collectGlittersCheckbox.Checked = Settings.Default.collectGlitters;
            this.collectCargoCheckbox.Checked = Settings.Default.collectCargo;
            this.collectEventChestsCheckbox.Checked = Settings.Default.collectEventChests;
            this.collectLionChestsCheckbox.Checked = Settings.Default.collectLionChests;
            this.collectMeatCheckbox.Checked = Settings.Default.collectMeat;
            this.shootMonstersCheckbox.Checked = Settings.Default.shootMonsters;
            this.autoJoinRaidCheckbox.Checked = Settings.Default.autoJoinRaid;
            this.raidNpcAmmoComboBox.Text = Settings.Default.raidNpcAmmo;
            this.shootBossAmmoComboBox.Text = Settings.Default.raidBossAmmo;
            this.shootBossCheckbox.Checked = Settings.Default.shootRaidBoss;
            this.raidRepAtNumeric.Value = Settings.Default.repAtHpRaid;
            this.autoStartCheckbox.Checked = Settings.Default.autoStartBot;
            this.shootNpcsCheckbox.Checked = Settings.Default.shootNPCs;
            this.prioNPCsCheckbox.Checked = Settings.Default.prioNPCs;
            this.collectWhileAttackCheckbox.Checked = Settings.Default.collectBoxesWhileAttacking;
            this.onlyFullHPNPCsCheckBox.Checked = Settings.Default.onlyFullHPNPCs;
            this.autoJoinBonusmapCheckbox.Checked = Settings.Default.autoJoinBonusmap;
            this.repAtBonusmapNumeric.Value = Settings.Default.bonusMapRepAtHp;
            this.bonusmapAmmoTextbox.Text = Settings.Default.bonusMapAmmo;
            this.prioritizeMonstersCheckbox.Checked = Settings.Default.prioMonsters;
            this.Height = Settings.Default.height;
            this.Width = Settings.Default.width;
            if (Settings.Default.NPCs != null)
            {
                try
                {
                    for (int i = 0; i < Settings.Default.NPCs.Count; i++)
                    {
                        string[] args = Settings.Default.NPCs[i].Split('|');
                        npcGridView.Rows.Add(new object[] { false, args[1], args[2], false, false, false });
                        foreach (DataGridViewRow row in npcGridView.Rows)
                        {
                            if ((string)row.Cells[1].Value == (args[1]))
                            {
                                if ((args[0]) == "1")
                                {
                                    row.Cells[0].Value = (row.Cells[0] as DataGridViewCheckBoxCell).TrueValue;
                                }
                                if ((args[3]) == "1")
                                {
                                    row.Cells[3].Value = (row.Cells[3] as DataGridViewCheckBoxCell).TrueValue;
                                }
                                if ((args[4]) == "1")
                                {
                                    row.Cells[4].Value = (row.Cells[4] as DataGridViewCheckBoxCell).TrueValue;
                                }
                                if ((args[5]) == "1")
                                {
                                    row.Cells[5].Value = (row.Cells[5] as DataGridViewCheckBoxCell).TrueValue;
                                }
                                row.Cells[2].Value = args[2];
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    if (MessageBox.Show("There was an Error while loading NPCs.\n" + ex.Message + "\nDo you want to load the Default NPC List?", "Load Settings Error.", MessageBoxButtons.YesNo, MessageBoxIcon.Error) == DialogResult.Yes)
                    {
                        LoadDefaultGridItems(true, false);
                    }
                }
            }
            if (Settings.Default.monsters != null)
            {
                try
                {
                    for (int i = 0; i < Settings.Default.monsters.Count; i++)
                    {
                        string[] args = Settings.Default.monsters[i].Split('|');
                        monsterGridView.Rows.Add(new object[] { false, args[1], args[2]});
                        foreach (DataGridViewRow row in monsterGridView.Rows)
                        {
                            if ((string)row.Cells[1].Value == (args[1]))
                            {
                                if ((args[0]) == "1")
                                {
                                    row.Cells[0].Value = (row.Cells[0] as DataGridViewCheckBoxCell).TrueValue;
                                }
                                row.Cells[2].Value = args[2];
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    if (MessageBox.Show("There was an Error while loading Monsters.\n" + ex.Message + "\nDo you want to load the Default Monster List?", "Load Settings Error.", MessageBoxButtons.YesNo, MessageBoxIcon.Error) == DialogResult.Yes)
                    {
                        LoadDefaultGridItems(false, true);
                    }
                }
            }
            if (Settings.Default.firstStart)
            {
                this.LoadDefaultGridItems(true, true);
                Settings.Default.firstStart = false;
            }
            CreateSettings();
        }

        private void startButton_Click(object sender, EventArgs e)
        {
            BotLogic.StartBotThread();
            writeLine("Starting...");
        }

        private void stopbutton_Click(object sender, EventArgs e)
        {
            BotLogic.StopBotThread();
            writeLine("Stopping...");
        }

        private void loginButton_Click(object sender, EventArgs e)
        {
            if (usernameBox.Text.Length > 1 && passwordBox.Text.Length > 1)
            {
                if (Client.loggedin && MessageBox.Show("Do you really want to create a new Session?", "Create new Session.", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
                {
                    return;
                }
                Client.entitys.Clear();
                loginButton.Enabled = false;
                try
                {
                    if (BotLogic.running)
                    {
                        BotLogic.StopBotThread();
                    }
                    BotCalculator.StopThreads();
                }
                catch (Exception ex)
                {
                    BotLogic.WriteLine("There was an Exception while closing current Threads!\n" + ex.Message);
                }
                BotSession.logginIn = false;
                Client.loggedin = false;
                username = usernameBox.Text;
                password = passwordBox.Text;
                this.Text = "BoxyBot - V." + Program.version + " " + username;
                this.LoginMethod();
            }
            else
            {
                MessageBox.Show("Please enter valid login information!", "Invalid Information!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            saveSettings();
            BotCalculator.StopThreads();
            Process.GetCurrentProcess().Kill();
        }

        private void collectChestsCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            BotLogic.collectChests = collectChestsCheckbox.Checked;
        }

        private void repAtHpNmrcud_ValueChanged(object sender, EventArgs e)
        {
            BotLogic.repAtHp = (int)repAtHpNmrcud.Value;
        }

        private void saveSettingsButton_Click(object sender, EventArgs e)
        {
            saveSettings();
            CreateSettings();
            writeLine("Settings saved.");
        }

        private void shootMonstersCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            monsterGridView.Enabled = shootMonstersCheckbox.Checked;
        }

        private void monsterGridView_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            MessageBox.Show(e.Exception.ToString());
        }

        private void shootBossCheckbox_CheckedChanged(object sender, EventArgs e)
        {
            shootBossAmmoComboBox.Enabled = shootBossCheckbox.Checked;
        }

        private void joinRaidButton_Click(object sender, EventArgs e)
        {
            Account.raidMedallion = Account.level > 16 ? 30 : 38;
            if (Client.loggedin)
            {
                SeafightMethods.ActivateItem(Account.raidMedallion);
            }
        }

        private void bgTimer_Tick(object sender, EventArgs e)
        {
            DrawStats();
        }

        private void webBrowser1_DocumentCompleted(object sender, WebBrowserDocumentCompletedEventArgs e)
        {
            if (webBrowser1.DocumentText.Contains("bgcdw_login_form_username"))
            {
                HtmlElement lname = webBrowser1.Document.GetElementById("bgcdw_login_form_username");
                HtmlElement lpass = webBrowser1.Document.GetElementById("bgcdw_login_form_password");
                if (!lname.GetAttribute("value").Equals(usernameBox.Text))
                {
                    lname.SetAttribute("value", usernameBox.Text);
                }
                if (!lpass.GetAttribute("value").Equals(passwordBox.Text))
                {
                    lpass.SetAttribute("value", passwordBox.Text);
                }
                try
                {
                    webBrowser1.Document.GetElementById("bgcdw_login_form_login").InvokeMember("click");
                }
                catch (Exception)
                {
                    foreach (HtmlElement element in webBrowser1.Document.All)
                    {
                        if (element.GetAttribute("className") == "bgcdw_button bgcdw_login_form_login")
                        {
                            element.InvokeMember("click");
                            break;
                        }
                    }
                }
                BotLogic.WriteLine("Logging in user: " + usernameBox.Text);
                loginButton.Enabled = true;
            }
            if (webBrowser1.DocumentText.Contains("href=\"index.es?action=internalMap\""))
            {
                Client.loggedin = true;
                webBrowser1.Document.GetElementById("game_start_button").InvokeMember("click");
                BotLogic.WriteLine("Succesfully logged in. Session ID: " + Account.sessionId);
                BotLogic.WriteLine("Establishing Seafight connection...");
            }
        }

        public void StartLocalProxy()
        {
            Server server = new Server();
            this.localThread = new Thread(server.Start);
            this.localThread.IsBackground = false;
            this.localThread.Start();
            this.StartBrowserProxy();
        }

        public void StartBrowserProxy()
        {
            BrowserProxy.Start();
            WinInetInterop.SetConnectionProxy(string.Concat(new object[]
                {
                    "127.0.0.1",
                    ":",
                    Server.FiddlerPort
                }));
        }

        private void webBrowser1_NewWindow(object sender, CancelEventArgs e)
        {
            webBrowser1.Navigate(this.webBrowser1.Url.AbsoluteUri.Replace("action=internalStart&loginDone=true", "action=internalMap"));
            e.Cancel = true;
        }

        private void reInstallCertbox_CheckedChanged(object sender, EventArgs e)
        {
            if (reInstallCertbox.Checked)
            {
                if (CertMaker.removeFiddlerGeneratedCerts(true))
                {
                    this.writeLine("Unistalled SFCollector Certificates.");
                }
                MessageBox.Show("All Certificates have been removed!\nPlease restart the Bot, for the changes to take affect!", "Unistalled Certificate.", MessageBoxButtons.OK, MessageBoxIcon.Information);
                reInstallCertbox.Checked = false;
            }
        }

        private void addNpcButton_Click(object sender, EventArgs e)
        {
            npcGridView.Rows.Add(new object[] { false, addNPCTextbox.Text, "Hollowballs (20)", false, false, false });
        }

        private void showAllNPCsButton_Click(object sender, EventArgs e)
        {
            if (Client.loggedin && BotMethods.npcNames.Count > 0)
            {
                var _npcs = help.SortDictionary_2(BotMethods.npcNames).Values.ToList<string>();
                AllNPCsForm npcsForm = new AllNPCsForm(_npcs);
                if (npcsForm.ShowDialog(this) == DialogResult.OK)
                {
                    Dictionary<int, string> npcs = new Dictionary<int, string>();
                    foreach (var npc in npcsForm.selectedNPCs)
                    {
                        npcs.Add(BotMethods.npcNames.FirstOrDefault(item => item.Value == npc).Key, npc);
                    }
                    Dictionary<int, string> NPCs = help.SortDictionary_2(npcs);
                    foreach (var item in NPCs)
                    {
                        if (!help.GridViewContains(npcGridView, item.Value))
                        {
                            npcGridView.Rows.Add(new object[] { false, item.Value, "Hollowballs (20)", false, false, false });
                        }
                    }
                }
                npcsForm.Close();
                npcsForm.Dispose();
            }
            else BotLogic.WriteLine("Login first!");
        }

        private void showAllMonstersButton_Click(object sender, EventArgs e)
        {
            if (Client.loggedin && BotMethods.monsterNames.Count > 0)
            {
                var _monsters = help.SortDictionary_2(BotMethods.monsterNames).Values.ToList<string>();
                var monstersForm = new AllMonstersForm(_monsters);
                if (monstersForm.ShowDialog(this) == DialogResult.OK)
                {
                    Dictionary<int, string> monsters = new Dictionary<int, string>();
                    foreach (var monster in monstersForm.selectedMonsters)
                    {
                        monsters.Add(BotMethods.monsterNames.FirstOrDefault(item => item.Value == monster).Key, monster);
                    }
                    Dictionary<int, string> Monsters = help.SortDictionary_2(monsters);
                    foreach (var item in Monsters)
                    {
                        if (!help.GridViewContains(monsterGridView, item.Value))
                        {
                            monsterGridView.Rows.Add(new object[] { false, item.Value, "Bronze Harpoons (50)" });
                        }
                    }
                }
                monstersForm.Close();
                monstersForm.Dispose();
            }
            else BotLogic.WriteLine("Login first!");
        }

        private void addMonsterButton_Click(object sender, EventArgs e)
        {
            monsterGridView.Rows.Add(new object[] { false, addMonsterTextbox.Text, "Bronze Harpoons (50)" });
        }

        private void joinBonusmapButton_Click(object sender, EventArgs e)
        {
            try
            {
                if (Client.loggedin && Server.Connected)
                {
                    if (BotLogic.running)
                    {
                        BotLogic.WriteLine("Stop the Bot first!");
                        return;
                    }
                    if (bonusmapCombobox.Text.Length <= 2)
                    {
                        BotLogic.WriteLine("Select a Bonusmap first!");
                        return;
                    }
                    BotLogic.lastBonusmapId = Account.bonusMaps.Values.ToList().Find(map => map.mapName == bonusmapCombobox.Text.Replace(help.Between(bonusmapCombobox.Text, " (", ")"), "").Replace(" (", "").Replace(")", "")).mapId;
                    var mapId = BotLogic.lastBonusmapId;
                    SeafightMethods.JoinBonusMap(mapId);
                }
                else BotLogic.WriteLine("LogIn first!");
            }
            catch (Exception ex)
            {
                BotLogic.WriteLine("There was an error while joining Bonusmap!\n\n" + ex.Message);
            }
        }

        private void leaveBonusmapButton_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            res_man = new ResourceManager("SFCollector.Resources.Res", typeof(Form1).Assembly);
            switch_language();  //default is english
        }

        private void switch_language()
        {
            if (languagebox.Text == "Hungarian")    
            {
                cul = CultureInfo.CreateSpecificCulture("hu");        
            }
            else if (languagebox.Text == "English")          
            {
                cul = CultureInfo.CreateSpecificCulture("en");        
            }
            else if (languagebox.Text == "Romanian")
            {
                cul = CultureInfo.CreateSpecificCulture("ro");
               
            }
            else
            {
                cul = CultureInfo.CreateSpecificCulture("de");        
            }

            stopbutton.Text = res_man.GetString("stopbutton", cul);
            npcGridView.Columns["ammoNpcColumn"].HeaderText = res_man.GetString("ammoNpcColumn", cul);
            autoJoinBonusmapCheckbox.Text = res_man.GetString("autoJoinBonusmapCheckbox", cul);
            autoJoinRaidCheckbox.Text = res_man.GetString("autoJoinRaidCheckbox", cul);
            autoStartCheckbox.Text = res_man.GetString("autoStartCheckbox", cul);
            npcGridView.Columns["boardNPCColumn"].HeaderText = res_man.GetString("boardNPCColumn", cul);
            bonusmap_ammo_text.Text = res_man.GetString("bonusmap_ammo_text", cul);
            bonusmap_mapname_text.Text = res_man.GetString("bonusmap_mapname_text", cul);
            bonusmap_repair_text.Text = res_man.GetString("bonusmap_repair_text", cul);
            bonusmapTabpage.Text = res_man.GetString("bonusmapTabpage", cul);
            collectCargoCheckbox.Text = res_man.GetString("collectCargoCheckbox", cul);
            collectChestsCheckbox.Text = res_man.GetString("collectChestsCheckbox", cul);
            collectEventChestsCheckbox.Text = res_man.GetString("collectEventChestsCheckbox", cul);
            collectGlittersCheckbox.Text = res_man.GetString("collectGlittersCheckbox", cul);
            collectLionChestsCheckbox.Text = res_man.GetString("collectLionChestsCheckbox", cul);
            collectMeatCheckbox.Text = res_man.GetString("collectMeatCheckbox", cul);
            collector_rep_text.Text = res_man.GetString("collector_rep_text", cul);
            CollectorTabpage.Text = res_man.GetString("CollectorTabpage", cul);
            collectWhileAttackCheckbox.Text = res_man.GetString("collectWhileAttackCheckbox", cul);
            joinBonusmapButton.Text = res_man.GetString("joinBonusmapButton", cul);
            joinRaidButton.Text = res_man.GetString("joinRaidButton", cul);
            leaveBonusmapButton.Text = res_man.GetString("leaveBonusmapButton", cul);
            leaveRaidButton.Text = res_man.GetString("leaveRaidButton", cul);
            login_tab.Text = res_man.GetString("login_tab", cul);
            loginButton.Text = res_man.GetString("loginButton", cul);
            map_tab.Text = res_man.GetString("map_tab", cul);
            monsterGridView.Columns["MonsterColumn"].HeaderText = res_man.GetString("MonsterColumn", cul);
            monsterGridView.Columns["MonsterHarpoon"].HeaderText = res_man.GetString("MonsterHarpoon", cul);
            monsterTabpage.Text = res_man.GetString("monsterTabpage", cul);
            npcTabpage.Text = res_man.GetString("npcTabpage", cul);
            onlyFullHPNPCsCheckBox.Text = res_man.GetString("onlyFullHPNPCsCheckBox", cul);
            password_text.Text = res_man.GetString("password_text", cul);
            npcGridView.Columns["platesNpcColumn"].HeaderText = res_man.GetString("platesNpcColumn", cul);
            npcGridView.Columns["powderNpcColumn"].HeaderText = res_man.GetString("powderNpcColumn", cul);
            prioNPCsCheckbox.Text = res_man.GetString("prioNPCsCheckbox", cul);
            prioritizeMonstersCheckbox.Text = res_man.GetString("prioritizeMonstersCheckbox", cul);
            raid_npc_ammo_text.Text = res_man.GetString("raid_npc_ammo_text", cul);
            raid_repair_text.Text = res_man.GetString("raid_repair_text", cul);
            raid_settings_group_text.Text = res_man.GetString("raid_settings_group_text", cul);
            raidTabpage.Text = res_man.GetString("raidTabpage", cul);
            reInstallCertbox.Text = res_man.GetString("reInstallCertbox", cul);
            settings_tab.Text = res_man.GetString("settings_tab", cul);
            settings2_tab.Text = res_man.GetString("settings2_tab", cul);
            shootBossCheckbox.Text = res_man.GetString("shootBossCheckbox", cul);
            shootMonstersCheckbox.Text = res_man.GetString("shootMonstersCheckbox", cul);
            shootNpcsCheckbox.Text = res_man.GetString("shootNpcsCheckbox", cul);
            startButton.Text = res_man.GetString("startButton", cul);
            stat_collectedgolds_text.Text = res_man.GetString("stat_collectedgolds_text", cul);
            stat_collectedmojos_text.Text = res_man.GetString("stat_collectedmojos_text", cul);
            stat_collectedpearls_text.Text = res_man.GetString("stat_collectedpearls_text", cul);
            stat_collectedxp_text.Text = res_man.GetString("stat_collectedxp_text", cul);
            stat_currentposition_text.Text = res_man.GetString("stat_currentposition_text", cul);
            stat_glitter_text.Text = res_man.GetString("stat_glitter_text", cul);
            stat_monster_text.Text = res_man.GetString("stat_monster_text", cul);
            stat_npc_text.Text = res_man.GetString("stat_npc_text", cul);
            stats_tab.Text = res_man.GetString("stats_tab", cul);
            stopbutton.Text = res_man.GetString("stopbutton", cul);
            username_text.Text = res_man.GetString("username_text", cul);
            saveSettingsButton.Text = res_man.GetString("saveSettingsButton", cul);
            addnpc_text.Text = res_man.GetString("addnpc_text", cul);
            addNpcButton.Text = res_man.GetString("addNpcButton", cul);
            showAllNPCsButton.Text = res_man.GetString("showAllNPCsButton", cul);
            addmonster_text.Text = res_man.GetString("addmonster_text", cul);
            addMonsterButton.Text = res_man.GetString("addMonsterButton", cul);
            showAllMonstersButton.Text = res_man.GetString("showAllMonstersButton", cul);

        }

        private void languagebox_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch_language();
        }
    }
}
