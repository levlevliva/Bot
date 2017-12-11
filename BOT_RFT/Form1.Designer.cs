namespace SFCollector
{
    partial class Form1
    {
        /// <summary>
        /// Erforderliche Designervariable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Verwendete Ressourcen bereinigen.
        /// </summary>
        /// <param name="disposing">True, wenn verwaltete Ressourcen gelöscht werden sollen; andernfalls False.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Vom Windows Form-Designer generierter Code

        /// <summary>
        /// Erforderliche Methode für die Designerunterstützung.
        /// Der Inhalt der Methode darf nicht mit dem Code-Editor geändert werden.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.stats_tab = new System.Windows.Forms.TabPage();
            this.positionLabel = new System.Windows.Forms.Label();
            this.stat_currentposition_text = new System.Windows.Forms.Label();
            this.sessionxplabel = new System.Windows.Forms.Label();
            this.sessiongoldlabel = new System.Windows.Forms.Label();
            this.sessionmojoslabel = new System.Windows.Forms.Label();
            this.sessionpearlslabel = new System.Windows.Forms.Label();
            this.sessionmonsterslabel = new System.Windows.Forms.Label();
            this.sessionnpcslabel = new System.Windows.Forms.Label();
            this.sessionboxeslabel = new System.Windows.Forms.Label();
            this.stat_collectedxp_text = new System.Windows.Forms.Label();
            this.stat_collectedgolds_text = new System.Windows.Forms.Label();
            this.stat_collectedmojos_text = new System.Windows.Forms.Label();
            this.stat_collectedpearls_text = new System.Windows.Forms.Label();
            this.stat_monster_text = new System.Windows.Forms.Label();
            this.stat_npc_text = new System.Windows.Forms.Label();
            this.stat_glitter_text = new System.Windows.Forms.Label();
            this.settings_tab = new System.Windows.Forms.TabPage();
            this.tabControl2 = new System.Windows.Forms.TabControl();
            this.login_tab = new System.Windows.Forms.TabPage();
            this.autoStartCheckbox = new System.Windows.Forms.CheckBox();
            this.reInstallCertbox = new System.Windows.Forms.CheckBox();
            this.login_text = new System.Windows.Forms.Button();
            this.username_text = new System.Windows.Forms.Label();
            this.passwordBox = new System.Windows.Forms.TextBox();
            this.password_text = new System.Windows.Forms.Label();
            this.usernameBox = new System.Windows.Forms.TextBox();
            this.settings2_tab = new System.Windows.Forms.TabPage();
            this.innerSettingsTabControl = new System.Windows.Forms.TabControl();
            this.CollectorTabpage = new System.Windows.Forms.TabPage();
            this.collectCargoCheckbox = new System.Windows.Forms.CheckBox();
            this.collectLionChestsCheckbox = new System.Windows.Forms.CheckBox();
            this.collectEventChestsCheckbox = new System.Windows.Forms.CheckBox();
            this.collectMeatCheckbox = new System.Windows.Forms.CheckBox();
            this.collectGlittersCheckbox = new System.Windows.Forms.CheckBox();
            this.repAtHpNmrcud = new System.Windows.Forms.NumericUpDown();
            this.collector_rep_text = new System.Windows.Forms.Label();
            this.collectChestsCheckbox = new System.Windows.Forms.CheckBox();
            this.npcTabpage = new System.Windows.Forms.TabPage();
            this.showAllNPCsButton = new System.Windows.Forms.Button();
            this.addNpcButton = new System.Windows.Forms.Button();
            this.addNPCTextbox = new System.Windows.Forms.TextBox();
            this.label14 = new System.Windows.Forms.Label();
            this.shootNpcsCheckbox = new System.Windows.Forms.CheckBox();
            this.collectWhileAttackCheckbox = new System.Windows.Forms.CheckBox();
            this.prioNPCsCheckbox = new System.Windows.Forms.CheckBox();
            this.onlyFullHPNPCsCheckBox = new System.Windows.Forms.CheckBox();
            this.npcGridView = new System.Windows.Forms.DataGridView();
            this.checkedNpcColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.npcNameColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ammoNpcColumn = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.powderNpcColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.platesNpcColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.boardNPCColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.monsterTabpage = new System.Windows.Forms.TabPage();
            this.prioritizeMonstersCheckbox = new System.Windows.Forms.CheckBox();
            this.showAllMonstersButton = new System.Windows.Forms.Button();
            this.addMonsterButton = new System.Windows.Forms.Button();
            this.addMonsterTextbox = new System.Windows.Forms.TextBox();
            this.label15 = new System.Windows.Forms.Label();
            this.monsterGridView = new System.Windows.Forms.DataGridView();
            this.selectedColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.MonsterColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.MonsterHarpoon = new System.Windows.Forms.DataGridViewComboBoxColumn();
            this.shootMonstersCheckbox = new System.Windows.Forms.CheckBox();
            this.raidTabpage = new System.Windows.Forms.TabPage();
            this.raid_settings_group_text = new System.Windows.Forms.GroupBox();
            this.raidRepAtNumeric = new System.Windows.Forms.NumericUpDown();
            this.raid_repair_text = new System.Windows.Forms.Label();
            this.autoJoinRaidCheckbox = new System.Windows.Forms.CheckBox();
            this.raid_npc_ammo_text = new System.Windows.Forms.Label();
            this.shootBossCheckbox = new System.Windows.Forms.CheckBox();
            this.leaveRaidButton = new System.Windows.Forms.Button();
            this.joinRaidButton = new System.Windows.Forms.Button();
            this.shootBossAmmoComboBox = new System.Windows.Forms.ComboBox();
            this.raidNpcAmmoComboBox = new System.Windows.Forms.ComboBox();
            this.bonusmapTabpage = new System.Windows.Forms.TabPage();
            this.leaveBonusmapButton = new System.Windows.Forms.Button();
            this.joinBonusmapButton = new System.Windows.Forms.Button();
            this.bonusmap_mapname_text = new System.Windows.Forms.Label();
            this.bonusmapCombobox = new System.Windows.Forms.ComboBox();
            this.autoJoinBonusmapCheckbox = new System.Windows.Forms.CheckBox();
            this.repAtBonusmapNumeric = new System.Windows.Forms.NumericUpDown();
            this.bonusmap_repair_text = new System.Windows.Forms.Label();
            this.bonusmapAmmoTextbox = new System.Windows.Forms.ComboBox();
            this.bonusmap_ammo_text = new System.Windows.Forms.Label();
            this.saveSettingsButton = new System.Windows.Forms.Button();
            this.startButton = new System.Windows.Forms.Button();
            this.stopbutton = new System.Windows.Forms.Button();
            this.map_tab = new System.Windows.Forms.TabPage();
            this.webBrowser1 = new System.Windows.Forms.WebBrowser();
            this.logBox = new System.Windows.Forms.RichTextBox();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.bgTimer = new System.Windows.Forms.Timer(this.components);
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.languagesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.englishToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.germanToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.hungarianToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.stats_tab.SuspendLayout();
            this.settings_tab.SuspendLayout();
            this.tabControl2.SuspendLayout();
            this.login_tab.SuspendLayout();
            this.settings2_tab.SuspendLayout();
            this.innerSettingsTabControl.SuspendLayout();
            this.CollectorTabpage.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.repAtHpNmrcud)).BeginInit();
            this.npcTabpage.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.npcGridView)).BeginInit();
            this.monsterTabpage.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.monsterGridView)).BeginInit();
            this.raidTabpage.SuspendLayout();
            this.raid_settings_group_text.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.raidRepAtNumeric)).BeginInit();
            this.bonusmapTabpage.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.repAtBonusmapNumeric)).BeginInit();
            this.map_tab.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // stats_tab
            // 
            this.stats_tab.Controls.Add(this.positionLabel);
            this.stats_tab.Controls.Add(this.stat_currentposition_text);
            this.stats_tab.Controls.Add(this.sessionxplabel);
            this.stats_tab.Controls.Add(this.sessiongoldlabel);
            this.stats_tab.Controls.Add(this.sessionmojoslabel);
            this.stats_tab.Controls.Add(this.sessionpearlslabel);
            this.stats_tab.Controls.Add(this.sessionmonsterslabel);
            this.stats_tab.Controls.Add(this.sessionnpcslabel);
            this.stats_tab.Controls.Add(this.sessionboxeslabel);
            this.stats_tab.Controls.Add(this.stat_collectedxp_text);
            this.stats_tab.Controls.Add(this.stat_collectedgolds_text);
            this.stats_tab.Controls.Add(this.stat_collectedmojos_text);
            this.stats_tab.Controls.Add(this.stat_collectedpearls_text);
            this.stats_tab.Controls.Add(this.stat_monster_text);
            this.stats_tab.Controls.Add(this.stat_npc_text);
            this.stats_tab.Controls.Add(this.stat_glitter_text);
            this.stats_tab.Location = new System.Drawing.Point(4, 22);
            this.stats_tab.Name = "stats_tab";
            this.stats_tab.Size = new System.Drawing.Size(379, 440);
            this.stats_tab.TabIndex = 3;
            this.stats_tab.Text = "Statistics";
            this.stats_tab.UseVisualStyleBackColor = true;
            // 
            // positionLabel
            // 
            this.positionLabel.AutoSize = true;
            this.positionLabel.Location = new System.Drawing.Point(67, 252);
            this.positionLabel.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.positionLabel.Name = "positionLabel";
            this.positionLabel.Size = new System.Drawing.Size(12, 13);
            this.positionLabel.TabIndex = 15;
            this.positionLabel.Text = "/";
            // 
            // stat_currentposition_text
            // 
            this.stat_currentposition_text.AutoSize = true;
            this.stat_currentposition_text.Location = new System.Drawing.Point(8, 252);
            this.stat_currentposition_text.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.stat_currentposition_text.Name = "stat_currentposition_text";
            this.stat_currentposition_text.Size = new System.Drawing.Size(47, 13);
            this.stat_currentposition_text.TabIndex = 14;
            this.stat_currentposition_text.Text = "Position:";
            // 
            // sessionxplabel
            // 
            this.sessionxplabel.AutoSize = true;
            this.sessionxplabel.Location = new System.Drawing.Point(67, 200);
            this.sessionxplabel.Name = "sessionxplabel";
            this.sessionxplabel.Size = new System.Drawing.Size(12, 13);
            this.sessionxplabel.TabIndex = 13;
            this.sessionxplabel.Text = "/";
            // 
            // sessiongoldlabel
            // 
            this.sessiongoldlabel.AutoSize = true;
            this.sessiongoldlabel.Location = new System.Drawing.Point(67, 173);
            this.sessiongoldlabel.Name = "sessiongoldlabel";
            this.sessiongoldlabel.Size = new System.Drawing.Size(12, 13);
            this.sessiongoldlabel.TabIndex = 12;
            this.sessiongoldlabel.Text = "/";
            // 
            // sessionmojoslabel
            // 
            this.sessionmojoslabel.AutoSize = true;
            this.sessionmojoslabel.Location = new System.Drawing.Point(67, 148);
            this.sessionmojoslabel.Name = "sessionmojoslabel";
            this.sessionmojoslabel.Size = new System.Drawing.Size(12, 13);
            this.sessionmojoslabel.TabIndex = 11;
            this.sessionmojoslabel.Text = "/";
            // 
            // sessionpearlslabel
            // 
            this.sessionpearlslabel.AutoSize = true;
            this.sessionpearlslabel.Location = new System.Drawing.Point(67, 125);
            this.sessionpearlslabel.Name = "sessionpearlslabel";
            this.sessionpearlslabel.Size = new System.Drawing.Size(12, 13);
            this.sessionpearlslabel.TabIndex = 10;
            this.sessionpearlslabel.Text = "/";
            // 
            // sessionmonsterslabel
            // 
            this.sessionmonsterslabel.AutoSize = true;
            this.sessionmonsterslabel.Location = new System.Drawing.Point(67, 77);
            this.sessionmonsterslabel.Name = "sessionmonsterslabel";
            this.sessionmonsterslabel.Size = new System.Drawing.Size(12, 13);
            this.sessionmonsterslabel.TabIndex = 9;
            this.sessionmonsterslabel.Text = "/";
            // 
            // sessionnpcslabel
            // 
            this.sessionnpcslabel.AutoSize = true;
            this.sessionnpcslabel.Location = new System.Drawing.Point(67, 53);
            this.sessionnpcslabel.Name = "sessionnpcslabel";
            this.sessionnpcslabel.Size = new System.Drawing.Size(12, 13);
            this.sessionnpcslabel.TabIndex = 8;
            this.sessionnpcslabel.Text = "/";
            // 
            // sessionboxeslabel
            // 
            this.sessionboxeslabel.AutoSize = true;
            this.sessionboxeslabel.Location = new System.Drawing.Point(67, 28);
            this.sessionboxeslabel.Name = "sessionboxeslabel";
            this.sessionboxeslabel.Size = new System.Drawing.Size(12, 13);
            this.sessionboxeslabel.TabIndex = 7;
            this.sessionboxeslabel.Text = "/";
            // 
            // stat_collectedxp_text
            // 
            this.stat_collectedxp_text.AutoSize = true;
            this.stat_collectedxp_text.Location = new System.Drawing.Point(8, 200);
            this.stat_collectedxp_text.Name = "stat_collectedxp_text";
            this.stat_collectedxp_text.Size = new System.Drawing.Size(30, 13);
            this.stat_collectedxp_text.TabIndex = 6;
            this.stat_collectedxp_text.Text = "+XP:";
            // 
            // stat_collectedgolds_text
            // 
            this.stat_collectedgolds_text.AutoSize = true;
            this.stat_collectedgolds_text.Location = new System.Drawing.Point(8, 173);
            this.stat_collectedgolds_text.Name = "stat_collectedgolds_text";
            this.stat_collectedgolds_text.Size = new System.Drawing.Size(38, 13);
            this.stat_collectedgolds_text.TabIndex = 5;
            this.stat_collectedgolds_text.Text = "+Gold:";
            // 
            // stat_collectedmojos_text
            // 
            this.stat_collectedmojos_text.AutoSize = true;
            this.stat_collectedmojos_text.Location = new System.Drawing.Point(8, 148);
            this.stat_collectedmojos_text.Name = "stat_collectedmojos_text";
            this.stat_collectedmojos_text.Size = new System.Drawing.Size(44, 13);
            this.stat_collectedmojos_text.TabIndex = 4;
            this.stat_collectedmojos_text.Text = "+Mojos:";
            // 
            // stat_collectedpearls_text
            // 
            this.stat_collectedpearls_text.AutoSize = true;
            this.stat_collectedpearls_text.Location = new System.Drawing.Point(8, 125);
            this.stat_collectedpearls_text.Name = "stat_collectedpearls_text";
            this.stat_collectedpearls_text.Size = new System.Drawing.Size(45, 13);
            this.stat_collectedpearls_text.TabIndex = 3;
            this.stat_collectedpearls_text.Text = "+Pearls:";
            // 
            // stat_monster_text
            // 
            this.stat_monster_text.AutoSize = true;
            this.stat_monster_text.Location = new System.Drawing.Point(8, 77);
            this.stat_monster_text.Name = "stat_monster_text";
            this.stat_monster_text.Size = new System.Drawing.Size(53, 13);
            this.stat_monster_text.TabIndex = 2;
            this.stat_monster_text.Text = "Monsters:";
            // 
            // stat_npc_text
            // 
            this.stat_npc_text.AutoSize = true;
            this.stat_npc_text.Location = new System.Drawing.Point(8, 53);
            this.stat_npc_text.Name = "stat_npc_text";
            this.stat_npc_text.Size = new System.Drawing.Size(37, 13);
            this.stat_npc_text.TabIndex = 1;
            this.stat_npc_text.Text = "NPCs:";
            // 
            // stat_glitter_text
            // 
            this.stat_glitter_text.AutoSize = true;
            this.stat_glitter_text.Location = new System.Drawing.Point(8, 28);
            this.stat_glitter_text.Name = "stat_glitter_text";
            this.stat_glitter_text.Size = new System.Drawing.Size(42, 13);
            this.stat_glitter_text.TabIndex = 0;
            this.stat_glitter_text.Text = "Glitters:";
            // 
            // settings_tab
            // 
            this.settings_tab.Controls.Add(this.tabControl2);
            this.settings_tab.Controls.Add(this.saveSettingsButton);
            this.settings_tab.Location = new System.Drawing.Point(4, 22);
            this.settings_tab.Name = "settings_tab";
            this.settings_tab.Padding = new System.Windows.Forms.Padding(3);
            this.settings_tab.Size = new System.Drawing.Size(379, 453);
            this.settings_tab.TabIndex = 1;
            this.settings_tab.Text = "Settings";
            this.settings_tab.UseVisualStyleBackColor = true;
            // 
            // tabControl2
            // 
            this.tabControl2.Controls.Add(this.login_tab);
            this.tabControl2.Controls.Add(this.settings2_tab);
            this.tabControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl2.Location = new System.Drawing.Point(3, 3);
            this.tabControl2.Margin = new System.Windows.Forms.Padding(2);
            this.tabControl2.Name = "tabControl2";
            this.tabControl2.SelectedIndex = 0;
            this.tabControl2.Size = new System.Drawing.Size(373, 422);
            this.tabControl2.TabIndex = 12;
            // 
            // login_tab
            // 
            this.login_tab.Controls.Add(this.autoStartCheckbox);
            this.login_tab.Controls.Add(this.reInstallCertbox);
            this.login_tab.Controls.Add(this.login_text);
            this.login_tab.Controls.Add(this.username_text);
            this.login_tab.Controls.Add(this.passwordBox);
            this.login_tab.Controls.Add(this.password_text);
            this.login_tab.Controls.Add(this.usernameBox);
            this.login_tab.Location = new System.Drawing.Point(4, 22);
            this.login_tab.Margin = new System.Windows.Forms.Padding(2);
            this.login_tab.Name = "login_tab";
            this.login_tab.Padding = new System.Windows.Forms.Padding(2);
            this.login_tab.Size = new System.Drawing.Size(365, 396);
            this.login_tab.TabIndex = 0;
            this.login_tab.Text = "Login";
            this.login_tab.UseVisualStyleBackColor = true;
            // 
            // autoStartCheckbox
            // 
            this.autoStartCheckbox.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.autoStartCheckbox.AutoSize = true;
            this.autoStartCheckbox.Location = new System.Drawing.Point(48, 274);
            this.autoStartCheckbox.Margin = new System.Windows.Forms.Padding(2);
            this.autoStartCheckbox.Name = "autoStartCheckbox";
            this.autoStartCheckbox.Size = new System.Drawing.Size(73, 17);
            this.autoStartCheckbox.TabIndex = 7;
            this.autoStartCheckbox.Text = "Auto Start";
            this.autoStartCheckbox.UseVisualStyleBackColor = true;
            // 
            // reInstallCertbox
            // 
            this.reInstallCertbox.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.reInstallCertbox.AutoSize = true;
            this.reInstallCertbox.Location = new System.Drawing.Point(48, 248);
            this.reInstallCertbox.Margin = new System.Windows.Forms.Padding(2);
            this.reInstallCertbox.Name = "reInstallCertbox";
            this.reInstallCertbox.Size = new System.Drawing.Size(119, 17);
            this.reInstallCertbox.TabIndex = 6;
            this.reInstallCertbox.Text = "Re-install Certificate";
            this.reInstallCertbox.UseVisualStyleBackColor = true;
            this.reInstallCertbox.CheckedChanged += new System.EventHandler(this.reInstallCertbox_CheckedChanged);
            // 
            // login_text
            // 
            this.login_text.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
            this.login_text.Location = new System.Drawing.Point(48, 209);
            this.login_text.Name = "login_text";
            this.login_text.Size = new System.Drawing.Size(254, 22);
            this.login_text.TabIndex = 3;
            this.login_text.Text = "Login";
            this.login_text.UseVisualStyleBackColor = true;
            this.login_text.Click += new System.EventHandler(this.loginButton_Click);
            // 
            // username_text
            // 
            this.username_text.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.username_text.AutoSize = true;
            this.username_text.Location = new System.Drawing.Point(46, 148);
            this.username_text.Name = "username_text";
            this.username_text.Size = new System.Drawing.Size(58, 13);
            this.username_text.TabIndex = 4;
            this.username_text.Text = "Username:";
            // 
            // passwordBox
            // 
            this.passwordBox.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
            this.passwordBox.Location = new System.Drawing.Point(110, 177);
            this.passwordBox.Name = "passwordBox";
            this.passwordBox.Size = new System.Drawing.Size(195, 20);
            this.passwordBox.TabIndex = 1;
            this.passwordBox.UseSystemPasswordChar = true;
            // 
            // password_text
            // 
            this.password_text.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.password_text.AutoSize = true;
            this.password_text.Location = new System.Drawing.Point(47, 178);
            this.password_text.Name = "password_text";
            this.password_text.Size = new System.Drawing.Size(56, 13);
            this.password_text.TabIndex = 5;
            this.password_text.Text = "Password:";
            // 
            // usernameBox
            // 
            this.usernameBox.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
            this.usernameBox.Location = new System.Drawing.Point(110, 146);
            this.usernameBox.Name = "usernameBox";
            this.usernameBox.Size = new System.Drawing.Size(195, 20);
            this.usernameBox.TabIndex = 0;
            // 
            // settings2_tab
            // 
            this.settings2_tab.Controls.Add(this.innerSettingsTabControl);
            this.settings2_tab.Location = new System.Drawing.Point(4, 22);
            this.settings2_tab.Margin = new System.Windows.Forms.Padding(2);
            this.settings2_tab.Name = "settings2_tab";
            this.settings2_tab.Padding = new System.Windows.Forms.Padding(2);
            this.settings2_tab.Size = new System.Drawing.Size(365, 396);
            this.settings2_tab.TabIndex = 1;
            this.settings2_tab.Text = "Settings";
            this.settings2_tab.UseVisualStyleBackColor = true;
            // 
            // innerSettingsTabControl
            // 
            this.innerSettingsTabControl.Controls.Add(this.CollectorTabpage);
            this.innerSettingsTabControl.Controls.Add(this.npcTabpage);
            this.innerSettingsTabControl.Controls.Add(this.monsterTabpage);
            this.innerSettingsTabControl.Controls.Add(this.raidTabpage);
            this.innerSettingsTabControl.Controls.Add(this.bonusmapTabpage);
            this.innerSettingsTabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.innerSettingsTabControl.Location = new System.Drawing.Point(2, 2);
            this.innerSettingsTabControl.Margin = new System.Windows.Forms.Padding(2);
            this.innerSettingsTabControl.Name = "innerSettingsTabControl";
            this.innerSettingsTabControl.SelectedIndex = 0;
            this.innerSettingsTabControl.Size = new System.Drawing.Size(361, 392);
            this.innerSettingsTabControl.TabIndex = 12;
            // 
            // CollectorTabpage
            // 
            this.CollectorTabpage.Controls.Add(this.collectCargoCheckbox);
            this.CollectorTabpage.Controls.Add(this.collectLionChestsCheckbox);
            this.CollectorTabpage.Controls.Add(this.collectEventChestsCheckbox);
            this.CollectorTabpage.Controls.Add(this.collectMeatCheckbox);
            this.CollectorTabpage.Controls.Add(this.collectGlittersCheckbox);
            this.CollectorTabpage.Controls.Add(this.repAtHpNmrcud);
            this.CollectorTabpage.Controls.Add(this.collector_rep_text);
            this.CollectorTabpage.Controls.Add(this.collectChestsCheckbox);
            this.CollectorTabpage.Location = new System.Drawing.Point(4, 22);
            this.CollectorTabpage.Margin = new System.Windows.Forms.Padding(2);
            this.CollectorTabpage.Name = "CollectorTabpage";
            this.CollectorTabpage.Padding = new System.Windows.Forms.Padding(2);
            this.CollectorTabpage.Size = new System.Drawing.Size(353, 366);
            this.CollectorTabpage.TabIndex = 0;
            this.CollectorTabpage.Text = " ";
            this.CollectorTabpage.UseVisualStyleBackColor = true;
            // 
            // collectCargoCheckbox
            // 
            this.collectCargoCheckbox.AutoSize = true;
            this.collectCargoCheckbox.Location = new System.Drawing.Point(4, 155);
            this.collectCargoCheckbox.Name = "collectCargoCheckbox";
            this.collectCargoCheckbox.Size = new System.Drawing.Size(89, 17);
            this.collectCargoCheckbox.TabIndex = 7;
            this.collectCargoCheckbox.Text = "Collect Cargo";
            this.collectCargoCheckbox.UseVisualStyleBackColor = true;
            // 
            // collectLionChestsCheckbox
            // 
            this.collectLionChestsCheckbox.AutoSize = true;
            this.collectLionChestsCheckbox.Location = new System.Drawing.Point(4, 102);
            this.collectLionChestsCheckbox.Margin = new System.Windows.Forms.Padding(2);
            this.collectLionChestsCheckbox.Name = "collectLionChestsCheckbox";
            this.collectLionChestsCheckbox.Size = new System.Drawing.Size(116, 17);
            this.collectLionChestsCheckbox.TabIndex = 6;
            this.collectLionChestsCheckbox.Text = "Collect Lion Chests";
            this.collectLionChestsCheckbox.UseVisualStyleBackColor = true;
            // 
            // collectEventChestsCheckbox
            // 
            this.collectEventChestsCheckbox.AutoSize = true;
            this.collectEventChestsCheckbox.Location = new System.Drawing.Point(4, 75);
            this.collectEventChestsCheckbox.Margin = new System.Windows.Forms.Padding(2);
            this.collectEventChestsCheckbox.Name = "collectEventChestsCheckbox";
            this.collectEventChestsCheckbox.Size = new System.Drawing.Size(124, 17);
            this.collectEventChestsCheckbox.TabIndex = 5;
            this.collectEventChestsCheckbox.Text = "Collect Event Chests";
            this.collectEventChestsCheckbox.UseVisualStyleBackColor = true;
            // 
            // collectMeatCheckbox
            // 
            this.collectMeatCheckbox.AutoSize = true;
            this.collectMeatCheckbox.Location = new System.Drawing.Point(4, 128);
            this.collectMeatCheckbox.Name = "collectMeatCheckbox";
            this.collectMeatCheckbox.Size = new System.Drawing.Size(85, 17);
            this.collectMeatCheckbox.TabIndex = 4;
            this.collectMeatCheckbox.Text = "Collect Meat";
            this.collectMeatCheckbox.UseVisualStyleBackColor = true;
            // 
            // collectGlittersCheckbox
            // 
            this.collectGlittersCheckbox.AutoSize = true;
            this.collectGlittersCheckbox.Location = new System.Drawing.Point(4, 22);
            this.collectGlittersCheckbox.Name = "collectGlittersCheckbox";
            this.collectGlittersCheckbox.Size = new System.Drawing.Size(93, 17);
            this.collectGlittersCheckbox.TabIndex = 3;
            this.collectGlittersCheckbox.Text = "Collect Glitters";
            this.collectGlittersCheckbox.UseVisualStyleBackColor = true;
            // 
            // repAtHpNmrcud
            // 
            this.repAtHpNmrcud.Location = new System.Drawing.Point(64, 189);
            this.repAtHpNmrcud.Maximum = new decimal(new int[] {
            99,
            0,
            0,
            0});
            this.repAtHpNmrcud.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.repAtHpNmrcud.Name = "repAtHpNmrcud";
            this.repAtHpNmrcud.Size = new System.Drawing.Size(42, 20);
            this.repAtHpNmrcud.TabIndex = 2;
            this.repAtHpNmrcud.Value = new decimal(new int[] {
            50,
            0,
            0,
            0});
            // 
            // collector_rep_text
            // 
            this.collector_rep_text.AutoSize = true;
            this.collector_rep_text.Location = new System.Drawing.Point(4, 191);
            this.collector_rep_text.Name = "collector_rep_text";
            this.collector_rep_text.Size = new System.Drawing.Size(54, 13);
            this.collector_rep_text.TabIndex = 1;
            this.collector_rep_text.Text = "Rep HP <";
            // 
            // collectChestsCheckbox
            // 
            this.collectChestsCheckbox.AutoSize = true;
            this.collectChestsCheckbox.Location = new System.Drawing.Point(4, 49);
            this.collectChestsCheckbox.Name = "collectChestsCheckbox";
            this.collectChestsCheckbox.Size = new System.Drawing.Size(93, 17);
            this.collectChestsCheckbox.TabIndex = 0;
            this.collectChestsCheckbox.Text = "Collect Chests";
            this.collectChestsCheckbox.UseVisualStyleBackColor = true;
            // 
            // npcTabpage
            // 
            this.npcTabpage.Controls.Add(this.showAllNPCsButton);
            this.npcTabpage.Controls.Add(this.addNpcButton);
            this.npcTabpage.Controls.Add(this.addNPCTextbox);
            this.npcTabpage.Controls.Add(this.label14);
            this.npcTabpage.Controls.Add(this.shootNpcsCheckbox);
            this.npcTabpage.Controls.Add(this.collectWhileAttackCheckbox);
            this.npcTabpage.Controls.Add(this.prioNPCsCheckbox);
            this.npcTabpage.Controls.Add(this.onlyFullHPNPCsCheckBox);
            this.npcTabpage.Controls.Add(this.npcGridView);
            this.npcTabpage.Location = new System.Drawing.Point(4, 22);
            this.npcTabpage.Margin = new System.Windows.Forms.Padding(2);
            this.npcTabpage.Name = "npcTabpage";
            this.npcTabpage.Padding = new System.Windows.Forms.Padding(2);
            this.npcTabpage.Size = new System.Drawing.Size(353, 353);
            this.npcTabpage.TabIndex = 3;
            this.npcTabpage.Text = "NPCs";
            this.npcTabpage.UseVisualStyleBackColor = true;
            // 
            // showAllNPCsButton
            // 
            this.showAllNPCsButton.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.showAllNPCsButton.Location = new System.Drawing.Point(7, 331);
            this.showAllNPCsButton.Margin = new System.Windows.Forms.Padding(2);
            this.showAllNPCsButton.Name = "showAllNPCsButton";
            this.showAllNPCsButton.Size = new System.Drawing.Size(342, 19);
            this.showAllNPCsButton.TabIndex = 40;
            this.showAllNPCsButton.Text = "Show all NPCs";
            this.showAllNPCsButton.UseVisualStyleBackColor = true;
            this.showAllNPCsButton.Click += new System.EventHandler(this.showAllNPCsButton_Click);
            // 
            // addNpcButton
            // 
            this.addNpcButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.addNpcButton.Location = new System.Drawing.Point(310, 306);
            this.addNpcButton.Margin = new System.Windows.Forms.Padding(2);
            this.addNpcButton.Name = "addNpcButton";
            this.addNpcButton.Size = new System.Drawing.Size(38, 19);
            this.addNpcButton.TabIndex = 39;
            this.addNpcButton.Text = "Add";
            this.addNpcButton.UseVisualStyleBackColor = true;
            this.addNpcButton.Click += new System.EventHandler(this.addNpcButton_Click);
            // 
            // addNPCTextbox
            // 
            this.addNPCTextbox.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.addNPCTextbox.Location = new System.Drawing.Point(61, 306);
            this.addNPCTextbox.Margin = new System.Windows.Forms.Padding(2);
            this.addNPCTextbox.Name = "addNPCTextbox";
            this.addNPCTextbox.Size = new System.Drawing.Size(246, 20);
            this.addNPCTextbox.TabIndex = 38;
            // 
            // label14
            // 
            this.label14.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(4, 310);
            this.label14.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(54, 13);
            this.label14.TabIndex = 37;
            this.label14.Text = "Add NPC:";
            // 
            // shootNpcsCheckbox
            // 
            this.shootNpcsCheckbox.AutoSize = true;
            this.shootNpcsCheckbox.Location = new System.Drawing.Point(3, 5);
            this.shootNpcsCheckbox.Margin = new System.Windows.Forms.Padding(2);
            this.shootNpcsCheckbox.Name = "shootNpcsCheckbox";
            this.shootNpcsCheckbox.Size = new System.Drawing.Size(84, 17);
            this.shootNpcsCheckbox.TabIndex = 36;
            this.shootNpcsCheckbox.Text = "Shoot NPCs";
            this.shootNpcsCheckbox.UseVisualStyleBackColor = true;
            // 
            // collectWhileAttackCheckbox
            // 
            this.collectWhileAttackCheckbox.AutoSize = true;
            this.collectWhileAttackCheckbox.Location = new System.Drawing.Point(214, 23);
            this.collectWhileAttackCheckbox.Margin = new System.Windows.Forms.Padding(2);
            this.collectWhileAttackCheckbox.Name = "collectWhileAttackCheckbox";
            this.collectWhileAttackCheckbox.Size = new System.Drawing.Size(164, 17);
            this.collectWhileAttackCheckbox.TabIndex = 35;
            this.collectWhileAttackCheckbox.Text = "Collect Boxes while attacking";
            this.collectWhileAttackCheckbox.UseVisualStyleBackColor = true;
            // 
            // prioNPCsCheckbox
            // 
            this.prioNPCsCheckbox.AutoSize = true;
            this.prioNPCsCheckbox.Location = new System.Drawing.Point(117, 23);
            this.prioNPCsCheckbox.Margin = new System.Windows.Forms.Padding(2);
            this.prioNPCsCheckbox.Name = "prioNPCsCheckbox";
            this.prioNPCsCheckbox.Size = new System.Drawing.Size(95, 17);
            this.prioNPCsCheckbox.TabIndex = 34;
            this.prioNPCsCheckbox.Text = "Prioritize NPCs";
            this.prioNPCsCheckbox.UseVisualStyleBackColor = true;
            // 
            // onlyFullHPNPCsCheckBox
            // 
            this.onlyFullHPNPCsCheckBox.AutoSize = true;
            this.onlyFullHPNPCsCheckBox.Location = new System.Drawing.Point(3, 23);
            this.onlyFullHPNPCsCheckBox.Margin = new System.Windows.Forms.Padding(2);
            this.onlyFullHPNPCsCheckBox.Name = "onlyFullHPNPCsCheckBox";
            this.onlyFullHPNPCsCheckBox.Size = new System.Drawing.Size(113, 17);
            this.onlyFullHPNPCsCheckBox.TabIndex = 33;
            this.onlyFullHPNPCsCheckBox.Text = "Only full HP NPC\'s";
            this.onlyFullHPNPCsCheckBox.UseVisualStyleBackColor = true;
            // 
            // npcGridView
            // 
            this.npcGridView.AllowUserToAddRows = false;
            this.npcGridView.AllowUserToDeleteRows = false;
            this.npcGridView.AllowUserToResizeRows = false;
            this.npcGridView.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.npcGridView.BackgroundColor = System.Drawing.SystemColors.Window;
            this.npcGridView.ClipboardCopyMode = System.Windows.Forms.DataGridViewClipboardCopyMode.Disable;
            this.npcGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.checkedNpcColumn,
            this.npcNameColumn,
            this.ammoNpcColumn,
            this.powderNpcColumn,
            this.platesNpcColumn,
            this.boardNPCColumn});
            this.npcGridView.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnEnter;
            this.npcGridView.Location = new System.Drawing.Point(3, 41);
            this.npcGridView.Margin = new System.Windows.Forms.Padding(2);
            this.npcGridView.Name = "npcGridView";
            this.npcGridView.RowHeadersVisible = false;
            this.npcGridView.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.npcGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.npcGridView.Size = new System.Drawing.Size(346, 262);
            this.npcGridView.TabIndex = 3;
            // 
            // checkedNpcColumn
            // 
            this.checkedNpcColumn.FalseValue = "0";
            this.checkedNpcColumn.FillWeight = 101.47F;
            this.checkedNpcColumn.HeaderText = "";
            this.checkedNpcColumn.IndeterminateValue = "3";
            this.checkedNpcColumn.Name = "checkedNpcColumn";
            this.checkedNpcColumn.ToolTipText = "On selected Bot will Attack this NPC if in sight.";
            this.checkedNpcColumn.TrueValue = "1";
            this.checkedNpcColumn.Width = 50;
            // 
            // npcNameColumn
            // 
            this.npcNameColumn.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.npcNameColumn.FillWeight = 177.7808F;
            this.npcNameColumn.HeaderText = "NPC";
            this.npcNameColumn.Name = "npcNameColumn";
            // 
            // ammoNpcColumn
            // 
            this.ammoNpcColumn.FillWeight = 151.0886F;
            this.ammoNpcColumn.HeaderText = "Ammo";
            this.ammoNpcColumn.Items.AddRange(new object[] {
            "Chainballs (4)",
            "Stoneballs (6)",
            "Splinterballs (10)",
            "Fireballs (14)",
            "Hollowballs (20)",
            "Skullballs (60)",
            "Explosiveballs (75)",
            "Flares (75)",
            "Upgraded Explosiveballs (80)",
            "Reinforced Explosiveballs (75)",
            "Phosphorballs (50)",
            "Shrapnelballs (85)",
            "Upgraded Shrapnelballs (95)",
            "Krakenballs (60)",
            "Pumpkinballs (75)",
            "Soccerballs (75)",
            "Snowballs (75)",
            "Iceballs (80)",
            "Burning Iceballs (90)",
            "Scrapballs (80)",
            "Shellshockballs (75)",
            "Heartbreaker (90)",
            "Confettiballs (90)",
            "VoodooDoom (50 + 75)",
            "Voodooballs (75 + 50)",
            "Souleater (60 + 60)",
            "Voodooblast (100)"});
            this.ammoNpcColumn.Name = "ammoNpcColumn";
            this.ammoNpcColumn.ToolTipText = "The Ammo that the bot will use for the selected NPC.";
            this.ammoNpcColumn.Width = 103;
            // 
            // powderNpcColumn
            // 
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.White;
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle1.NullValue = false;
            this.powderNpcColumn.DefaultCellStyle = dataGridViewCellStyle1;
            this.powderNpcColumn.FalseValue = "0";
            this.powderNpcColumn.FillWeight = 49.9023F;
            this.powderNpcColumn.HeaderText = "Powder";
            this.powderNpcColumn.IndeterminateValue = "3";
            this.powderNpcColumn.Name = "powderNpcColumn";
            this.powderNpcColumn.TrueValue = "1";
            this.powderNpcColumn.Width = 35;
            // 
            // platesNpcColumn
            // 
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.White;
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.DimGray;
            dataGridViewCellStyle2.NullValue = false;
            this.platesNpcColumn.DefaultCellStyle = dataGridViewCellStyle2;
            this.platesNpcColumn.FalseValue = "0";
            this.platesNpcColumn.FillWeight = 56.7784F;
            this.platesNpcColumn.HeaderText = "Plates";
            this.platesNpcColumn.IndeterminateValue = "3";
            this.platesNpcColumn.Name = "platesNpcColumn";
            this.platesNpcColumn.TrueValue = "1";
            this.platesNpcColumn.Width = 38;
            // 
            // boardNPCColumn
            // 
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.White;
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.DimGray;
            this.boardNPCColumn.DefaultCellStyle = dataGridViewCellStyle3;
            this.boardNPCColumn.FalseValue = "0";
            this.boardNPCColumn.FillWeight = 63.02431F;
            this.boardNPCColumn.HeaderText = "Board";
            this.boardNPCColumn.IndeterminateValue = "3";
            this.boardNPCColumn.Name = "boardNPCColumn";
            this.boardNPCColumn.TrueValue = "1";
            this.boardNPCColumn.Width = 44;
            // 
            // monsterTabpage
            // 
            this.monsterTabpage.Controls.Add(this.prioritizeMonstersCheckbox);
            this.monsterTabpage.Controls.Add(this.showAllMonstersButton);
            this.monsterTabpage.Controls.Add(this.addMonsterButton);
            this.monsterTabpage.Controls.Add(this.addMonsterTextbox);
            this.monsterTabpage.Controls.Add(this.label15);
            this.monsterTabpage.Controls.Add(this.monsterGridView);
            this.monsterTabpage.Controls.Add(this.shootMonstersCheckbox);
            this.monsterTabpage.Location = new System.Drawing.Point(4, 22);
            this.monsterTabpage.Margin = new System.Windows.Forms.Padding(2);
            this.monsterTabpage.Name = "monsterTabpage";
            this.monsterTabpage.Padding = new System.Windows.Forms.Padding(2);
            this.monsterTabpage.Size = new System.Drawing.Size(353, 353);
            this.monsterTabpage.TabIndex = 1;
            this.monsterTabpage.Text = "Monsters";
            this.monsterTabpage.UseVisualStyleBackColor = true;
            // 
            // prioritizeMonstersCheckbox
            // 
            this.prioritizeMonstersCheckbox.AutoSize = true;
            this.prioritizeMonstersCheckbox.Location = new System.Drawing.Point(101, 10);
            this.prioritizeMonstersCheckbox.Margin = new System.Windows.Forms.Padding(2);
            this.prioritizeMonstersCheckbox.Name = "prioritizeMonstersCheckbox";
            this.prioritizeMonstersCheckbox.Size = new System.Drawing.Size(111, 17);
            this.prioritizeMonstersCheckbox.TabIndex = 45;
            this.prioritizeMonstersCheckbox.Text = "Prioritize Monsters";
            this.prioritizeMonstersCheckbox.UseVisualStyleBackColor = true;
            // 
            // showAllMonstersButton
            // 
            this.showAllMonstersButton.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.showAllMonstersButton.Location = new System.Drawing.Point(7, 334);
            this.showAllMonstersButton.Margin = new System.Windows.Forms.Padding(2);
            this.showAllMonstersButton.Name = "showAllMonstersButton";
            this.showAllMonstersButton.Size = new System.Drawing.Size(342, 20);
            this.showAllMonstersButton.TabIndex = 44;
            this.showAllMonstersButton.Text = "Show all NPCs";
            this.showAllMonstersButton.UseVisualStyleBackColor = true;
            this.showAllMonstersButton.Click += new System.EventHandler(this.showAllMonstersButton_Click);
            // 
            // addMonsterButton
            // 
            this.addMonsterButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.addMonsterButton.Location = new System.Drawing.Point(310, 309);
            this.addMonsterButton.Margin = new System.Windows.Forms.Padding(2);
            this.addMonsterButton.Name = "addMonsterButton";
            this.addMonsterButton.Size = new System.Drawing.Size(38, 20);
            this.addMonsterButton.TabIndex = 43;
            this.addMonsterButton.Text = "Add";
            this.addMonsterButton.UseVisualStyleBackColor = true;
            this.addMonsterButton.Click += new System.EventHandler(this.addMonsterButton_Click);
            // 
            // addMonsterTextbox
            // 
            this.addMonsterTextbox.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.addMonsterTextbox.Location = new System.Drawing.Point(78, 310);
            this.addMonsterTextbox.Margin = new System.Windows.Forms.Padding(2);
            this.addMonsterTextbox.Name = "addMonsterTextbox";
            this.addMonsterTextbox.Size = new System.Drawing.Size(229, 20);
            this.addMonsterTextbox.TabIndex = 42;
            // 
            // label15
            // 
            this.label15.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(4, 313);
            this.label15.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(70, 13);
            this.label15.TabIndex = 41;
            this.label15.Text = "Add Monster:";
            // 
            // monsterGridView
            // 
            this.monsterGridView.AllowUserToAddRows = false;
            this.monsterGridView.AllowUserToDeleteRows = false;
            this.monsterGridView.AllowUserToResizeRows = false;
            this.monsterGridView.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.monsterGridView.BackgroundColor = System.Drawing.SystemColors.Window;
            this.monsterGridView.ClipboardCopyMode = System.Windows.Forms.DataGridViewClipboardCopyMode.Disable;
            this.monsterGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.selectedColumn,
            this.MonsterColumn,
            this.MonsterHarpoon});
            this.monsterGridView.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnEnter;
            this.monsterGridView.Enabled = false;
            this.monsterGridView.Location = new System.Drawing.Point(2, 29);
            this.monsterGridView.Margin = new System.Windows.Forms.Padding(2);
            this.monsterGridView.Name = "monsterGridView";
            this.monsterGridView.RowHeadersVisible = false;
            this.monsterGridView.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.monsterGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.monsterGridView.Size = new System.Drawing.Size(350, 277);
            this.monsterGridView.TabIndex = 1;
            this.monsterGridView.DataError += new System.Windows.Forms.DataGridViewDataErrorEventHandler(this.monsterGridView_DataError);
            // 
            // selectedColumn
            // 
            this.selectedColumn.FalseValue = "0";
            this.selectedColumn.HeaderText = "";
            this.selectedColumn.IndeterminateValue = "2";
            this.selectedColumn.Name = "selectedColumn";
            this.selectedColumn.ToolTipText = "On selected the Bot will attack the marked Monster";
            this.selectedColumn.TrueValue = "1";
            // 
            // MonsterColumn
            // 
            this.MonsterColumn.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.MonsterColumn.HeaderText = "Monster";
            this.MonsterColumn.Name = "MonsterColumn";
            // 
            // MonsterHarpoon
            // 
            this.MonsterHarpoon.HeaderText = "Harpoons";
            this.MonsterHarpoon.Items.AddRange(new object[] {
            "Steel Harpoons (500)",
            "Iron Harpoons (250)",
            "Bronze Harpoons (50)",
            "Lead Harpoons (25)",
            "Copper Harpoons (10)"});
            this.MonsterHarpoon.Name = "MonsterHarpoon";
            this.MonsterHarpoon.ToolTipText = "The Harpoons the bot shall attack the marked Monster with";
            // 
            // shootMonstersCheckbox
            // 
            this.shootMonstersCheckbox.AutoSize = true;
            this.shootMonstersCheckbox.Location = new System.Drawing.Point(3, 10);
            this.shootMonstersCheckbox.Margin = new System.Windows.Forms.Padding(2);
            this.shootMonstersCheckbox.Name = "shootMonstersCheckbox";
            this.shootMonstersCheckbox.Size = new System.Drawing.Size(100, 17);
            this.shootMonstersCheckbox.TabIndex = 0;
            this.shootMonstersCheckbox.Text = "Shoot Monsters";
            this.shootMonstersCheckbox.UseVisualStyleBackColor = true;
            this.shootMonstersCheckbox.CheckedChanged += new System.EventHandler(this.shootMonstersCheckbox_CheckedChanged);
            // 
            // raidTabpage
            // 
            this.raidTabpage.Controls.Add(this.raid_settings_group_text);
            this.raidTabpage.Controls.Add(this.raid_npc_ammo_text);
            this.raidTabpage.Controls.Add(this.shootBossCheckbox);
            this.raidTabpage.Controls.Add(this.leaveRaidButton);
            this.raidTabpage.Controls.Add(this.joinRaidButton);
            this.raidTabpage.Controls.Add(this.shootBossAmmoComboBox);
            this.raidTabpage.Controls.Add(this.raidNpcAmmoComboBox);
            this.raidTabpage.Location = new System.Drawing.Point(4, 22);
            this.raidTabpage.Margin = new System.Windows.Forms.Padding(2);
            this.raidTabpage.Name = "raidTabpage";
            this.raidTabpage.Size = new System.Drawing.Size(353, 353);
            this.raidTabpage.TabIndex = 2;
            this.raidTabpage.Text = "Raid";
            this.raidTabpage.UseVisualStyleBackColor = true;
            // 
            // raid_settings_group_text
            // 
            this.raid_settings_group_text.Controls.Add(this.raidRepAtNumeric);
            this.raid_settings_group_text.Controls.Add(this.raid_repair_text);
            this.raid_settings_group_text.Controls.Add(this.autoJoinRaidCheckbox);
            this.raid_settings_group_text.Location = new System.Drawing.Point(4, 97);
            this.raid_settings_group_text.Margin = new System.Windows.Forms.Padding(2);
            this.raid_settings_group_text.Name = "raid_settings_group_text";
            this.raid_settings_group_text.Padding = new System.Windows.Forms.Padding(2);
            this.raid_settings_group_text.Size = new System.Drawing.Size(349, 93);
            this.raid_settings_group_text.TabIndex = 6;
            this.raid_settings_group_text.TabStop = false;
            this.raid_settings_group_text.Text = "Raid Settings";
            // 
            // raidRepAtNumeric
            // 
            this.raidRepAtNumeric.Location = new System.Drawing.Point(60, 43);
            this.raidRepAtNumeric.Maximum = new decimal(new int[] {
            99,
            0,
            0,
            0});
            this.raidRepAtNumeric.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.raidRepAtNumeric.Name = "raidRepAtNumeric";
            this.raidRepAtNumeric.Size = new System.Drawing.Size(42, 20);
            this.raidRepAtNumeric.TabIndex = 3;
            this.raidRepAtNumeric.Value = new decimal(new int[] {
            50,
            0,
            0,
            0});
            // 
            // raid_repair_text
            // 
            this.raid_repair_text.AutoSize = true;
            this.raid_repair_text.Location = new System.Drawing.Point(3, 44);
            this.raid_repair_text.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.raid_repair_text.Name = "raid_repair_text";
            this.raid_repair_text.Size = new System.Drawing.Size(53, 13);
            this.raid_repair_text.TabIndex = 1;
            this.raid_repair_text.Text = "Repair at:";
            // 
            // autoJoinRaidCheckbox
            // 
            this.autoJoinRaidCheckbox.AutoSize = true;
            this.autoJoinRaidCheckbox.Location = new System.Drawing.Point(3, 20);
            this.autoJoinRaidCheckbox.Margin = new System.Windows.Forms.Padding(2);
            this.autoJoinRaidCheckbox.Name = "autoJoinRaidCheckbox";
            this.autoJoinRaidCheckbox.Size = new System.Drawing.Size(70, 17);
            this.autoJoinRaidCheckbox.TabIndex = 0;
            this.autoJoinRaidCheckbox.Text = "Auto Join";
            this.autoJoinRaidCheckbox.UseVisualStyleBackColor = true;
            // 
            // raid_npc_ammo_text
            // 
            this.raid_npc_ammo_text.AutoSize = true;
            this.raid_npc_ammo_text.Location = new System.Drawing.Point(2, 27);
            this.raid_npc_ammo_text.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.raid_npc_ammo_text.Name = "raid_npc_ammo_text";
            this.raid_npc_ammo_text.Size = new System.Drawing.Size(64, 13);
            this.raid_npc_ammo_text.TabIndex = 5;
            this.raid_npc_ammo_text.Text = "NPC Ammo:";
            // 
            // shootBossCheckbox
            // 
            this.shootBossCheckbox.AutoSize = true;
            this.shootBossCheckbox.Location = new System.Drawing.Point(4, 60);
            this.shootBossCheckbox.Margin = new System.Windows.Forms.Padding(2);
            this.shootBossCheckbox.Name = "shootBossCheckbox";
            this.shootBossCheckbox.Size = new System.Drawing.Size(118, 17);
            this.shootBossCheckbox.TabIndex = 4;
            this.shootBossCheckbox.Text = "Shoot Boss, Ammo:";
            this.shootBossCheckbox.UseVisualStyleBackColor = true;
            this.shootBossCheckbox.CheckedChanged += new System.EventHandler(this.shootBossCheckbox_CheckedChanged);
            // 
            // leaveRaidButton
            // 
            this.leaveRaidButton.Location = new System.Drawing.Point(86, 193);
            this.leaveRaidButton.Margin = new System.Windows.Forms.Padding(2);
            this.leaveRaidButton.Name = "leaveRaidButton";
            this.leaveRaidButton.Size = new System.Drawing.Size(72, 23);
            this.leaveRaidButton.TabIndex = 3;
            this.leaveRaidButton.Text = "Leave Raid";
            this.leaveRaidButton.UseVisualStyleBackColor = true;
            // 
            // joinRaidButton
            // 
            this.joinRaidButton.Location = new System.Drawing.Point(4, 193);
            this.joinRaidButton.Margin = new System.Windows.Forms.Padding(2);
            this.joinRaidButton.Name = "joinRaidButton";
            this.joinRaidButton.Size = new System.Drawing.Size(72, 23);
            this.joinRaidButton.TabIndex = 2;
            this.joinRaidButton.Text = "Join Raid";
            this.joinRaidButton.UseVisualStyleBackColor = true;
            this.joinRaidButton.Click += new System.EventHandler(this.joinRaidButton_Click);
            // 
            // shootBossAmmoComboBox
            // 
            this.shootBossAmmoComboBox.Enabled = false;
            this.shootBossAmmoComboBox.FormattingEnabled = true;
            this.shootBossAmmoComboBox.Items.AddRange(new object[] {
            "Skullballs (60)",
            "Explosiveballs (75)",
            "Flares (75)",
            "Upgraded Explosiveballs (80)",
            "Reinforced Explosiveballs (75)",
            "Phosphorballs (50)",
            "Shrapnelballs (85)",
            "Upgraded Shrapnelballs (95)",
            "Krakenballs (60)",
            "Pumpkinballs (75)",
            "Soccerballs (75)",
            "Snowballs (75)",
            "Iceballs (80)",
            "Burning Iceballs (90)",
            "Scrapballs (80)",
            "Shellshockballs (75)",
            "Heartbreaker (90)",
            "Confettiballs (90)",
            "VoodooDoom (50 + 75)",
            "Voodooballs (75 + 50)",
            "Souleater (60 + 60)",
            "Voodooblast (100)"});
            this.shootBossAmmoComboBox.Location = new System.Drawing.Point(123, 59);
            this.shootBossAmmoComboBox.Margin = new System.Windows.Forms.Padding(2);
            this.shootBossAmmoComboBox.Name = "shootBossAmmoComboBox";
            this.shootBossAmmoComboBox.Size = new System.Drawing.Size(232, 21);
            this.shootBossAmmoComboBox.TabIndex = 1;
            // 
            // raidNpcAmmoComboBox
            // 
            this.raidNpcAmmoComboBox.FormattingEnabled = true;
            this.raidNpcAmmoComboBox.Items.AddRange(new object[] {
            "Chainballs (4)",
            "Stoneballs (6)",
            "Splinterballs (10)",
            "Fireballs (14)",
            "Hollowballs (20)",
            "Skullballs (60)",
            "Explosiveballs (75)",
            "Flares (75)",
            "Upgraded Explosiveballs (80)",
            "Reinforced Explosiveballs (75)",
            "Phosphorballs (50)",
            "Shrapnelballs (85)",
            "Upgraded Shrapnelballs (95)",
            "Krakenballs (60)",
            "Pumpkinballs (75)",
            "Soccerballs (75)",
            "Snowballs (75)",
            "Iceballs (80)",
            "Burning Iceballs (90)",
            "Scrapballs (80)",
            "Shellshockballs (75)",
            "Heartbreaker (90)",
            "Confettiballs (90)",
            "VoodooDoom (50 + 75)",
            "Voodooballs (75 + 50)",
            "Souleater (60 + 60)",
            "Voodooblast (100)"});
            this.raidNpcAmmoComboBox.Location = new System.Drawing.Point(123, 25);
            this.raidNpcAmmoComboBox.Margin = new System.Windows.Forms.Padding(2);
            this.raidNpcAmmoComboBox.Name = "raidNpcAmmoComboBox";
            this.raidNpcAmmoComboBox.Size = new System.Drawing.Size(232, 21);
            this.raidNpcAmmoComboBox.TabIndex = 0;
            // 
            // bonusmapTabpage
            // 
            this.bonusmapTabpage.Controls.Add(this.leaveBonusmapButton);
            this.bonusmapTabpage.Controls.Add(this.joinBonusmapButton);
            this.bonusmapTabpage.Controls.Add(this.bonusmap_mapname_text);
            this.bonusmapTabpage.Controls.Add(this.bonusmapCombobox);
            this.bonusmapTabpage.Controls.Add(this.autoJoinBonusmapCheckbox);
            this.bonusmapTabpage.Controls.Add(this.repAtBonusmapNumeric);
            this.bonusmapTabpage.Controls.Add(this.bonusmap_repair_text);
            this.bonusmapTabpage.Controls.Add(this.bonusmapAmmoTextbox);
            this.bonusmapTabpage.Controls.Add(this.bonusmap_ammo_text);
            this.bonusmapTabpage.Location = new System.Drawing.Point(4, 22);
            this.bonusmapTabpage.Margin = new System.Windows.Forms.Padding(1);
            this.bonusmapTabpage.Name = "bonusmapTabpage";
            this.bonusmapTabpage.Padding = new System.Windows.Forms.Padding(1);
            this.bonusmapTabpage.Size = new System.Drawing.Size(353, 353);
            this.bonusmapTabpage.TabIndex = 4;
            this.bonusmapTabpage.Text = "Bonusmap[BETA]";
            this.bonusmapTabpage.UseVisualStyleBackColor = true;
            // 
            // leaveBonusmapButton
            // 
            this.leaveBonusmapButton.Location = new System.Drawing.Point(99, 119);
            this.leaveBonusmapButton.Margin = new System.Windows.Forms.Padding(2);
            this.leaveBonusmapButton.Name = "leaveBonusmapButton";
            this.leaveBonusmapButton.Size = new System.Drawing.Size(97, 23);
            this.leaveBonusmapButton.TabIndex = 19;
            this.leaveBonusmapButton.Text = "Leave Bonusmap";
            this.leaveBonusmapButton.UseVisualStyleBackColor = true;
            this.leaveBonusmapButton.Click += new System.EventHandler(this.leaveBonusmapButton_Click);
            // 
            // joinBonusmapButton
            // 
            this.joinBonusmapButton.Location = new System.Drawing.Point(4, 119);
            this.joinBonusmapButton.Margin = new System.Windows.Forms.Padding(2);
            this.joinBonusmapButton.Name = "joinBonusmapButton";
            this.joinBonusmapButton.Size = new System.Drawing.Size(90, 23);
            this.joinBonusmapButton.TabIndex = 18;
            this.joinBonusmapButton.Text = "Join Bonusmap";
            this.joinBonusmapButton.UseVisualStyleBackColor = true;
            this.joinBonusmapButton.Click += new System.EventHandler(this.joinBonusmapButton_Click);
            // 
            // bonusmap_mapname_text
            // 
            this.bonusmap_mapname_text.AutoSize = true;
            this.bonusmap_mapname_text.Location = new System.Drawing.Point(2, 85);
            this.bonusmap_mapname_text.Margin = new System.Windows.Forms.Padding(1, 0, 1, 0);
            this.bonusmap_mapname_text.Name = "bonusmap_mapname_text";
            this.bonusmap_mapname_text.Size = new System.Drawing.Size(60, 13);
            this.bonusmap_mapname_text.TabIndex = 17;
            this.bonusmap_mapname_text.Text = "Bonusmap:";
            // 
            // bonusmapCombobox
            // 
            this.bonusmapCombobox.FormattingEnabled = true;
            this.bonusmapCombobox.Location = new System.Drawing.Point(64, 83);
            this.bonusmapCombobox.Margin = new System.Windows.Forms.Padding(1);
            this.bonusmapCombobox.Name = "bonusmapCombobox";
            this.bonusmapCombobox.Size = new System.Drawing.Size(286, 21);
            this.bonusmapCombobox.TabIndex = 16;
            // 
            // autoJoinBonusmapCheckbox
            // 
            this.autoJoinBonusmapCheckbox.AutoSize = true;
            this.autoJoinBonusmapCheckbox.Location = new System.Drawing.Point(112, 50);
            this.autoJoinBonusmapCheckbox.Margin = new System.Windows.Forms.Padding(1);
            this.autoJoinBonusmapCheckbox.Name = "autoJoinBonusmapCheckbox";
            this.autoJoinBonusmapCheckbox.Size = new System.Drawing.Size(123, 17);
            this.autoJoinBonusmapCheckbox.TabIndex = 15;
            this.autoJoinBonusmapCheckbox.Text = "Auto Join Bonusmap";
            this.autoJoinBonusmapCheckbox.UseVisualStyleBackColor = true;
            // 
            // repAtBonusmapNumeric
            // 
            this.repAtBonusmapNumeric.Location = new System.Drawing.Point(47, 49);
            this.repAtBonusmapNumeric.Maximum = new decimal(new int[] {
            99,
            0,
            0,
            0});
            this.repAtBonusmapNumeric.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.repAtBonusmapNumeric.Name = "repAtBonusmapNumeric";
            this.repAtBonusmapNumeric.Size = new System.Drawing.Size(42, 20);
            this.repAtBonusmapNumeric.TabIndex = 14;
            this.repAtBonusmapNumeric.Value = new decimal(new int[] {
            50,
            0,
            0,
            0});
            // 
            // bonusmap_repair_text
            // 
            this.bonusmap_repair_text.AutoSize = true;
            this.bonusmap_repair_text.Location = new System.Drawing.Point(2, 50);
            this.bonusmap_repair_text.Margin = new System.Windows.Forms.Padding(1, 0, 1, 0);
            this.bonusmap_repair_text.Name = "bonusmap_repair_text";
            this.bonusmap_repair_text.Size = new System.Drawing.Size(43, 13);
            this.bonusmap_repair_text.TabIndex = 13;
            this.bonusmap_repair_text.Text = "Rep At:";
            // 
            // bonusmapAmmoTextbox
            // 
            this.bonusmapAmmoTextbox.FormattingEnabled = true;
            this.bonusmapAmmoTextbox.Items.AddRange(new object[] {
            "Chainballs (4)",
            "Stoneballs (6)",
            "Splinterballs (10)",
            "Fireballs (14)",
            "Hollowballs (20)",
            "Skullballs (60)",
            "Explosiveballs (75)",
            "Flares (75)",
            "Upgraded Explosiveballs (80)",
            "Reinforced Explosiveballs (75)",
            "Phosphorballs (50)",
            "Shrapnelballs (85)",
            "Upgraded Shrapnelballs (95)",
            "Krakenballs (60)",
            "Pumpkinballs (75)",
            "Soccerballs (75)",
            "Snowballs (75)",
            "Iceballs (80)",
            "Burning Iceballs (90)",
            "Scrapballs (80)",
            "Shellshockballs (75)",
            "Heartbreaker (90)",
            "Confettiballs (90)",
            "VoodooDoom (50 + 75)",
            "Voodooballs (75 + 50)",
            "Souleater (60 + 60)",
            "Voodooblast (100)"});
            this.bonusmapAmmoTextbox.Location = new System.Drawing.Point(44, 19);
            this.bonusmapAmmoTextbox.Margin = new System.Windows.Forms.Padding(2);
            this.bonusmapAmmoTextbox.Name = "bonusmapAmmoTextbox";
            this.bonusmapAmmoTextbox.Size = new System.Drawing.Size(310, 21);
            this.bonusmapAmmoTextbox.TabIndex = 1;
            // 
            // bonusmap_ammo_text
            // 
            this.bonusmap_ammo_text.AutoSize = true;
            this.bonusmap_ammo_text.Location = new System.Drawing.Point(2, 20);
            this.bonusmap_ammo_text.Margin = new System.Windows.Forms.Padding(1, 0, 1, 0);
            this.bonusmap_ammo_text.Name = "bonusmap_ammo_text";
            this.bonusmap_ammo_text.Size = new System.Drawing.Size(39, 13);
            this.bonusmap_ammo_text.TabIndex = 0;
            this.bonusmap_ammo_text.Text = "Ammo:";
            // 
            // saveSettingsButton
            // 
            this.saveSettingsButton.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.saveSettingsButton.Location = new System.Drawing.Point(3, 425);
            this.saveSettingsButton.Margin = new System.Windows.Forms.Padding(2);
            this.saveSettingsButton.Name = "saveSettingsButton";
            this.saveSettingsButton.Size = new System.Drawing.Size(373, 25);
            this.saveSettingsButton.TabIndex = 13;
            this.saveSettingsButton.Text = "Save Settings";
            this.saveSettingsButton.UseVisualStyleBackColor = true;
            this.saveSettingsButton.Click += new System.EventHandler(this.saveSettingsButton_Click);
            // 
            // startButton
            // 
            this.startButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.startButton.Location = new System.Drawing.Point(208, 7);
            this.startButton.Name = "startButton";
            this.startButton.Size = new System.Drawing.Size(80, 24);
            this.startButton.TabIndex = 5;
            this.startButton.Text = "Start";
            this.startButton.UseVisualStyleBackColor = true;
            this.startButton.Click += new System.EventHandler(this.startButton_Click);
            // 
            // stopbutton
            // 
            this.stopbutton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.stopbutton.Location = new System.Drawing.Point(294, 7);
            this.stopbutton.Name = "stopbutton";
            this.stopbutton.Size = new System.Drawing.Size(80, 24);
            this.stopbutton.TabIndex = 6;
            this.stopbutton.Text = "Stop";
            this.stopbutton.UseVisualStyleBackColor = true;
            this.stopbutton.Click += new System.EventHandler(this.stopbutton_Click);
            // 
            // map_tab
            // 
            this.map_tab.Controls.Add(this.webBrowser1);
            this.map_tab.Controls.Add(this.logBox);
            this.map_tab.Location = new System.Drawing.Point(4, 22);
            this.map_tab.Name = "map_tab";
            this.map_tab.Padding = new System.Windows.Forms.Padding(3);
            this.map_tab.Size = new System.Drawing.Size(379, 440);
            this.map_tab.TabIndex = 0;
            this.map_tab.Text = "Map";
            this.map_tab.UseVisualStyleBackColor = true;
            // 
            // webBrowser1
            // 
            this.webBrowser1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.webBrowser1.Location = new System.Drawing.Point(3, 3);
            this.webBrowser1.Margin = new System.Windows.Forms.Padding(2);
            this.webBrowser1.MinimumSize = new System.Drawing.Size(10, 10);
            this.webBrowser1.Name = "webBrowser1";
            this.webBrowser1.ScriptErrorsSuppressed = true;
            this.webBrowser1.Size = new System.Drawing.Size(373, 327);
            this.webBrowser1.TabIndex = 3;
            this.webBrowser1.Url = new System.Uri("about:blank", System.UriKind.Absolute);
            this.webBrowser1.DocumentCompleted += new System.Windows.Forms.WebBrowserDocumentCompletedEventHandler(this.webBrowser1_DocumentCompleted);
            this.webBrowser1.NewWindow += new System.ComponentModel.CancelEventHandler(this.webBrowser1_NewWindow);
            // 
            // logBox
            // 
            this.logBox.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.logBox.Location = new System.Drawing.Point(3, 330);
            this.logBox.Name = "logBox";
            this.logBox.Size = new System.Drawing.Size(373, 107);
            this.logBox.TabIndex = 2;
            this.logBox.Text = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" +
    "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
            // 
            // tabControl1
            // 
            this.tabControl1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tabControl1.Controls.Add(this.map_tab);
            this.tabControl1.Controls.Add(this.settings_tab);
            this.tabControl1.Controls.Add(this.stats_tab);
            this.tabControl1.Location = new System.Drawing.Point(0, 37);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(387, 479);
            this.tabControl1.TabIndex = 0;
            // 
            // bgTimer
            // 
            this.bgTimer.Enabled = true;
            this.bgTimer.Tick += new System.EventHandler(this.bgTimer_Tick);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.languagesToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(387, 24);
            this.menuStrip1.TabIndex = 7;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // languagesToolStripMenuItem
            // 
            this.languagesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.englishToolStripMenuItem,
            this.germanToolStripMenuItem,
            this.hungarianToolStripMenuItem});
            this.languagesToolStripMenuItem.Name = "languagesToolStripMenuItem";
            this.languagesToolStripMenuItem.Size = new System.Drawing.Size(76, 20);
            this.languagesToolStripMenuItem.Text = "Languages";
            // 
            // englishToolStripMenuItem
            // 
            this.englishToolStripMenuItem.Name = "englishToolStripMenuItem";
            this.englishToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.englishToolStripMenuItem.Text = "English";
            // 
            // germanToolStripMenuItem
            // 
            this.germanToolStripMenuItem.Name = "germanToolStripMenuItem";
            this.germanToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.germanToolStripMenuItem.Text = "German";
            // 
            // hungarianToolStripMenuItem
            // 
            this.hungarianToolStripMenuItem.Name = "hungarianToolStripMenuItem";
            this.hungarianToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.hungarianToolStripMenuItem.Text = "Hungarian";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(387, 424);
            this.Controls.Add(this.startButton);
            this.Controls.Add(this.stopbutton);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.menuStrip1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.Text = "SFCollector";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.Load += new System.EventHandler(this.Form1_Load);
            this.stats_tab.ResumeLayout(false);
            this.stats_tab.PerformLayout();
            this.settings_tab.ResumeLayout(false);
            this.tabControl2.ResumeLayout(false);
            this.login_tab.ResumeLayout(false);
            this.login_tab.PerformLayout();
            this.settings2_tab.ResumeLayout(false);
            this.innerSettingsTabControl.ResumeLayout(false);
            this.CollectorTabpage.ResumeLayout(false);
            this.CollectorTabpage.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.repAtHpNmrcud)).EndInit();
            this.npcTabpage.ResumeLayout(false);
            this.npcTabpage.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.npcGridView)).EndInit();
            this.monsterTabpage.ResumeLayout(false);
            this.monsterTabpage.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.monsterGridView)).EndInit();
            this.raidTabpage.ResumeLayout(false);
            this.raidTabpage.PerformLayout();
            this.raid_settings_group_text.ResumeLayout(false);
            this.raid_settings_group_text.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.raidRepAtNumeric)).EndInit();
            this.bonusmapTabpage.ResumeLayout(false);
            this.bonusmapTabpage.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.repAtBonusmapNumeric)).EndInit();
            this.map_tab.ResumeLayout(false);
            this.tabControl1.ResumeLayout(false);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TabPage stats_tab;
        private System.Windows.Forms.Label sessionxplabel;
        private System.Windows.Forms.Label sessiongoldlabel;
        private System.Windows.Forms.Label sessionmojoslabel;
        private System.Windows.Forms.Label sessionpearlslabel;
        private System.Windows.Forms.Label sessionmonsterslabel;
        private System.Windows.Forms.Label sessionnpcslabel;
        private System.Windows.Forms.Label sessionboxeslabel;
        private System.Windows.Forms.Label stat_collectedxp_text;
        private System.Windows.Forms.Label stat_collectedgolds_text;
        private System.Windows.Forms.Label stat_collectedmojos_text;
        private System.Windows.Forms.Label stat_collectedpearls_text;
        private System.Windows.Forms.Label stat_monster_text;
        private System.Windows.Forms.Label stat_npc_text;
        private System.Windows.Forms.Label stat_glitter_text;
        private System.Windows.Forms.TabPage settings_tab;
        private System.Windows.Forms.TabControl tabControl2;
        private System.Windows.Forms.TabPage login_tab;
        private System.Windows.Forms.Button login_text;
        private System.Windows.Forms.Label username_text;
        private System.Windows.Forms.TextBox passwordBox;
        private System.Windows.Forms.Label password_text;
        private System.Windows.Forms.TextBox usernameBox;
        private System.Windows.Forms.TabPage settings2_tab;
        private System.Windows.Forms.NumericUpDown repAtHpNmrcud;
        private System.Windows.Forms.Label collector_rep_text;
        private System.Windows.Forms.CheckBox collectChestsCheckbox;
        private System.Windows.Forms.Button startButton;
        private System.Windows.Forms.Button stopbutton;
        private System.Windows.Forms.TabPage map_tab;
        private System.Windows.Forms.RichTextBox logBox;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabControl innerSettingsTabControl;
        private System.Windows.Forms.TabPage monsterTabpage;
        private System.Windows.Forms.DataGridView monsterGridView;
        private System.Windows.Forms.CheckBox shootMonstersCheckbox;
        private System.Windows.Forms.TabPage CollectorTabpage;
        private System.Windows.Forms.CheckBox collectMeatCheckbox;
        private System.Windows.Forms.CheckBox collectGlittersCheckbox;
        private System.Windows.Forms.Button saveSettingsButton;
        private System.Windows.Forms.DataGridViewCheckBoxColumn selectedColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn MonsterColumn;
        private System.Windows.Forms.DataGridViewComboBoxColumn MonsterHarpoon;
        private System.Windows.Forms.TabPage raidTabpage;
        private System.Windows.Forms.GroupBox raid_settings_group_text;
        private System.Windows.Forms.NumericUpDown raidRepAtNumeric;
        private System.Windows.Forms.Label raid_repair_text;
        private System.Windows.Forms.CheckBox autoJoinRaidCheckbox;
        private System.Windows.Forms.Label raid_npc_ammo_text;
        private System.Windows.Forms.CheckBox shootBossCheckbox;
        private System.Windows.Forms.Button leaveRaidButton;
        private System.Windows.Forms.Button joinRaidButton;
        private System.Windows.Forms.ComboBox shootBossAmmoComboBox;
        private System.Windows.Forms.ComboBox raidNpcAmmoComboBox;
        private System.Windows.Forms.WebBrowser webBrowser1;
        private System.Windows.Forms.Timer bgTimer;
        private System.Windows.Forms.CheckBox reInstallCertbox;
        private System.Windows.Forms.Label positionLabel;
        private System.Windows.Forms.Label stat_currentposition_text;
        private System.Windows.Forms.CheckBox autoStartCheckbox;
        private System.Windows.Forms.CheckBox collectCargoCheckbox;
        private System.Windows.Forms.CheckBox collectLionChestsCheckbox;
        private System.Windows.Forms.CheckBox collectEventChestsCheckbox;
        private System.Windows.Forms.TabPage npcTabpage;
        private System.Windows.Forms.DataGridView npcGridView;
        private System.Windows.Forms.DataGridViewCheckBoxColumn checkedNpcColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn npcNameColumn;
        private System.Windows.Forms.DataGridViewComboBoxColumn ammoNpcColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn powderNpcColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn platesNpcColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn boardNPCColumn;
        private System.Windows.Forms.CheckBox collectWhileAttackCheckbox;
        private System.Windows.Forms.CheckBox prioNPCsCheckbox;
        private System.Windows.Forms.CheckBox onlyFullHPNPCsCheckBox;
        private System.Windows.Forms.CheckBox shootNpcsCheckbox;
        private System.Windows.Forms.Button showAllNPCsButton;
        private System.Windows.Forms.Button addNpcButton;
        private System.Windows.Forms.TextBox addNPCTextbox;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Button showAllMonstersButton;
        private System.Windows.Forms.Button addMonsterButton;
        private System.Windows.Forms.TextBox addMonsterTextbox;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.TabPage bonusmapTabpage;
        private System.Windows.Forms.Label bonusmap_ammo_text;
        private System.Windows.Forms.ComboBox bonusmapAmmoTextbox;
        private System.Windows.Forms.Button leaveBonusmapButton;
        private System.Windows.Forms.Button joinBonusmapButton;
        private System.Windows.Forms.Label bonusmap_mapname_text;
        private System.Windows.Forms.ComboBox bonusmapCombobox;
        private System.Windows.Forms.CheckBox autoJoinBonusmapCheckbox;
        private System.Windows.Forms.NumericUpDown repAtBonusmapNumeric;
        private System.Windows.Forms.Label bonusmap_repair_text;
        private System.Windows.Forms.CheckBox prioritizeMonstersCheckbox;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem languagesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem englishToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem germanToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem hungarianToolStripMenuItem;
    }
}

