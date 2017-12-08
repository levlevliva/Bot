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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.posLabel = new System.Windows.Forms.Label();
            this.minimap = new System.Windows.Forms.PictureBox();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.collectChestsCheckbox = new System.Windows.Forms.CheckBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.usernameBox = new System.Windows.Forms.TextBox();
            this.passwordBox = new System.Windows.Forms.TextBox();
            this.loginButton = new System.Windows.Forms.Button();
            this.zoomBar = new System.Windows.Forms.TrackBar();
            this.label3 = new System.Windows.Forms.Label();
            this.stopbutton = new System.Windows.Forms.Button();
            this.startButton = new System.Windows.Forms.Button();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.sessionxplabel = new System.Windows.Forms.Label();
            this.sessiongoldlabel = new System.Windows.Forms.Label();
            this.sessionmojoslabel = new System.Windows.Forms.Label();
            this.sessionpearlslabel = new System.Windows.Forms.Label();
            this.sessionmonsterslabel = new System.Windows.Forms.Label();
            this.sessionnpcslabel = new System.Windows.Forms.Label();
            this.sessionboxeslabel = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.logBox = new System.Windows.Forms.RichTextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.repAtHpNmrcud = new System.Windows.Forms.NumericUpDown();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.minimap)).BeginInit();
            this.tabPage2.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.zoomBar)).BeginInit();
            this.tabPage4.SuspendLayout();
            this.tabPage3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.repAtHpNmrcud)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Controls.Add(this.tabPage4);
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl1.Location = new System.Drawing.Point(0, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(329, 287);
            this.tabControl1.TabIndex = 0;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.posLabel);
            this.tabPage1.Controls.Add(this.minimap);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(321, 261);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Map";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // posLabel
            // 
            this.posLabel.AutoSize = true;
            this.posLabel.BackColor = System.Drawing.Color.Black;
            this.posLabel.ForeColor = System.Drawing.SystemColors.Control;
            this.posLabel.Location = new System.Drawing.Point(200, 3);
            this.posLabel.Name = "posLabel";
            this.posLabel.Size = new System.Drawing.Size(88, 13);
            this.posLabel.TabIndex = 1;
            this.posLabel.Text = "Position: X: /|Y: /";
            // 
            // minimap
            // 
            this.minimap.BackColor = System.Drawing.Color.Black;
            this.minimap.Dock = System.Windows.Forms.DockStyle.Fill;
            this.minimap.Location = new System.Drawing.Point(3, 3);
            this.minimap.Name = "minimap";
            this.minimap.Size = new System.Drawing.Size(315, 255);
            this.minimap.TabIndex = 0;
            this.minimap.TabStop = false;
            this.minimap.MouseClick += new System.Windows.Forms.MouseEventHandler(this.minimap_MouseClick);
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.groupBox2);
            this.tabPage2.Controls.Add(this.groupBox1);
            this.tabPage2.Controls.Add(this.zoomBar);
            this.tabPage2.Controls.Add(this.label3);
            this.tabPage2.Controls.Add(this.stopbutton);
            this.tabPage2.Controls.Add(this.startButton);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(321, 261);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Settings";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.repAtHpNmrcud);
            this.groupBox2.Controls.Add(this.label11);
            this.groupBox2.Controls.Add(this.collectChestsCheckbox);
            this.groupBox2.Location = new System.Drawing.Point(8, 112);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(307, 49);
            this.groupBox2.TabIndex = 11;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Actions";
            // 
            // collectChestsCheckbox
            // 
            this.collectChestsCheckbox.AutoSize = true;
            this.collectChestsCheckbox.Location = new System.Drawing.Point(9, 19);
            this.collectChestsCheckbox.Name = "collectChestsCheckbox";
            this.collectChestsCheckbox.Size = new System.Drawing.Size(93, 17);
            this.collectChestsCheckbox.TabIndex = 0;
            this.collectChestsCheckbox.Text = "Collect Chests";
            this.collectChestsCheckbox.UseVisualStyleBackColor = true;
            this.collectChestsCheckbox.CheckedChanged += new System.EventHandler(this.collectChestsCheckbox_CheckedChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.usernameBox);
            this.groupBox1.Controls.Add(this.passwordBox);
            this.groupBox1.Controls.Add(this.loginButton);
            this.groupBox1.Location = new System.Drawing.Point(8, 6);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(307, 100);
            this.groupBox1.TabIndex = 10;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Login";
            // 
            // label1
            // 
            this.label1.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 27);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(58, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Username:";
            // 
            // label2
            // 
            this.label2.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 48);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(56, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Password:";
            // 
            // usernameBox
            // 
            this.usernameBox.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
            this.usernameBox.Location = new System.Drawing.Point(70, 24);
            this.usernameBox.Name = "usernameBox";
            this.usernameBox.Size = new System.Drawing.Size(231, 20);
            this.usernameBox.TabIndex = 2;
            // 
            // passwordBox
            // 
            this.passwordBox.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
            this.passwordBox.Location = new System.Drawing.Point(70, 45);
            this.passwordBox.Name = "passwordBox";
            this.passwordBox.Size = new System.Drawing.Size(231, 20);
            this.passwordBox.TabIndex = 3;
            this.passwordBox.UseSystemPasswordChar = true;
            // 
            // loginButton
            // 
            this.loginButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
            this.loginButton.Location = new System.Drawing.Point(9, 71);
            this.loginButton.Name = "loginButton";
            this.loginButton.Size = new System.Drawing.Size(292, 23);
            this.loginButton.TabIndex = 4;
            this.loginButton.Text = "Login";
            this.loginButton.UseVisualStyleBackColor = true;
            this.loginButton.Click += new System.EventHandler(this.loginButton_Click);
            // 
            // zoomBar
            // 
            this.zoomBar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right)));
            this.zoomBar.Location = new System.Drawing.Point(8, 180);
            this.zoomBar.Minimum = 1;
            this.zoomBar.Name = "zoomBar";
            this.zoomBar.Size = new System.Drawing.Size(305, 45);
            this.zoomBar.TabIndex = 8;
            this.zoomBar.Value = 4;
            this.zoomBar.ValueChanged += new System.EventHandler(this.zoomBar_ValueChanged);
            // 
            // label3
            // 
            this.label3.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(8, 164);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(37, 13);
            this.label3.TabIndex = 7;
            this.label3.Text = "Zoom:";
            // 
            // stopbutton
            // 
            this.stopbutton.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.stopbutton.Location = new System.Drawing.Point(118, 229);
            this.stopbutton.Name = "stopbutton";
            this.stopbutton.Size = new System.Drawing.Size(80, 24);
            this.stopbutton.TabIndex = 6;
            this.stopbutton.Text = "Stop";
            this.stopbutton.UseVisualStyleBackColor = true;
            this.stopbutton.Click += new System.EventHandler(this.stopbutton_Click);
            // 
            // startButton
            // 
            this.startButton.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.startButton.Location = new System.Drawing.Point(8, 229);
            this.startButton.Name = "startButton";
            this.startButton.Size = new System.Drawing.Size(80, 24);
            this.startButton.TabIndex = 5;
            this.startButton.Text = "Start";
            this.startButton.UseVisualStyleBackColor = true;
            this.startButton.Click += new System.EventHandler(this.startButton_Click);
            // 
            // tabPage4
            // 
            this.tabPage4.Controls.Add(this.sessionxplabel);
            this.tabPage4.Controls.Add(this.sessiongoldlabel);
            this.tabPage4.Controls.Add(this.sessionmojoslabel);
            this.tabPage4.Controls.Add(this.sessionpearlslabel);
            this.tabPage4.Controls.Add(this.sessionmonsterslabel);
            this.tabPage4.Controls.Add(this.sessionnpcslabel);
            this.tabPage4.Controls.Add(this.sessionboxeslabel);
            this.tabPage4.Controls.Add(this.label10);
            this.tabPage4.Controls.Add(this.label9);
            this.tabPage4.Controls.Add(this.label8);
            this.tabPage4.Controls.Add(this.label7);
            this.tabPage4.Controls.Add(this.label6);
            this.tabPage4.Controls.Add(this.label5);
            this.tabPage4.Controls.Add(this.label4);
            this.tabPage4.Location = new System.Drawing.Point(4, 22);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Size = new System.Drawing.Size(321, 261);
            this.tabPage4.TabIndex = 3;
            this.tabPage4.Text = "Statistics";
            this.tabPage4.UseVisualStyleBackColor = true;
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
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(8, 200);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(30, 13);
            this.label10.TabIndex = 6;
            this.label10.Text = "+XP:";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(8, 173);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(38, 13);
            this.label9.TabIndex = 5;
            this.label9.Text = "+Gold:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(8, 148);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(44, 13);
            this.label8.TabIndex = 4;
            this.label8.Text = "+Mojos:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(8, 125);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(45, 13);
            this.label7.TabIndex = 3;
            this.label7.Text = "+Pearls:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(8, 77);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(53, 13);
            this.label6.TabIndex = 2;
            this.label6.Text = "Monsters:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(8, 53);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(37, 13);
            this.label5.TabIndex = 1;
            this.label5.Text = "NPCs:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(8, 28);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(42, 13);
            this.label4.TabIndex = 0;
            this.label4.Text = "Glitters:";
            // 
            // tabPage3
            // 
            this.tabPage3.Controls.Add(this.logBox);
            this.tabPage3.Location = new System.Drawing.Point(4, 22);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Size = new System.Drawing.Size(321, 261);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Log";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // logBox
            // 
            this.logBox.Dock = System.Windows.Forms.DockStyle.Fill;
            this.logBox.Location = new System.Drawing.Point(0, 0);
            this.logBox.Name = "logBox";
            this.logBox.Size = new System.Drawing.Size(321, 261);
            this.logBox.TabIndex = 1;
            this.logBox.Text = "";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(132, 20);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(54, 13);
            this.label11.TabIndex = 1;
            this.label11.Text = "Rep HP <";
            // 
            // repAtHpNmrcud
            // 
            this.repAtHpNmrcud.Location = new System.Drawing.Point(192, 18);
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
            1,
            0,
            0,
            0});
            this.repAtHpNmrcud.ValueChanged += new System.EventHandler(this.repAtHpNmrcud_ValueChanged);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(329, 287);
            this.Controls.Add(this.tabControl1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.Text = "SFCollector";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.minimap)).EndInit();
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.zoomBar)).EndInit();
            this.tabPage4.ResumeLayout(false);
            this.tabPage4.PerformLayout();
            this.tabPage3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.repAtHpNmrcud)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Button stopbutton;
        private System.Windows.Forms.Button startButton;
        private System.Windows.Forms.Button loginButton;
        private System.Windows.Forms.TextBox passwordBox;
        private System.Windows.Forms.TextBox usernameBox;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.RichTextBox logBox;
        private System.Windows.Forms.PictureBox minimap;
        private System.Windows.Forms.TrackBar zoomBar;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label posLabel;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TabPage tabPage4;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label sessionxplabel;
        private System.Windows.Forms.Label sessiongoldlabel;
        private System.Windows.Forms.Label sessionmojoslabel;
        private System.Windows.Forms.Label sessionpearlslabel;
        private System.Windows.Forms.Label sessionmonsterslabel;
        private System.Windows.Forms.Label sessionnpcslabel;
        private System.Windows.Forms.Label sessionboxeslabel;
        private System.Windows.Forms.CheckBox collectChestsCheckbox;
        private System.Windows.Forms.NumericUpDown repAtHpNmrcud;
        private System.Windows.Forms.Label label11;
    }
}

