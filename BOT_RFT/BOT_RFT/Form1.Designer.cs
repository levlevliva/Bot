namespace BOT_RFT
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.seaMap = new System.Windows.Forms.TabPage();
            this.browserHiderBox = new System.Windows.Forms.PictureBox();
            this.webBrowser1 = new System.Windows.Forms.WebBrowser();
            this.options = new System.Windows.Forms.TabPage();
            this.loginGroup = new System.Windows.Forms.GroupBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.loginName = new System.Windows.Forms.TextBox();
            this.botLogBox = new System.Windows.Forms.RichTextBox();
            this.tabControl1.SuspendLayout();
            this.seaMap.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.browserHiderBox)).BeginInit();
            this.options.SuspendLayout();
            this.loginGroup.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tabControl1.Controls.Add(this.seaMap);
            this.tabControl1.Controls.Add(this.options);
            this.tabControl1.Location = new System.Drawing.Point(0, 1);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(952, 580);
            this.tabControl1.SizeMode = System.Windows.Forms.TabSizeMode.FillToRight;
            this.tabControl1.TabIndex = 0;
            // 
            // seaMap
            // 
            this.seaMap.Controls.Add(this.browserHiderBox);
            this.seaMap.Controls.Add(this.webBrowser1);
            this.seaMap.Location = new System.Drawing.Point(4, 22);
            this.seaMap.Name = "seaMap";
            this.seaMap.Padding = new System.Windows.Forms.Padding(3);
            this.seaMap.Size = new System.Drawing.Size(944, 554);
            this.seaMap.TabIndex = 0;
            this.seaMap.Text = "Tengertérkép";
            this.seaMap.UseVisualStyleBackColor = true;
            // 
            // browserHiderBox
            // 
            this.browserHiderBox.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.browserHiderBox.BackColor = System.Drawing.Color.Black;
            this.browserHiderBox.Image = ((System.Drawing.Image)(resources.GetObject("browserHiderBox.Image")));
            this.browserHiderBox.Location = new System.Drawing.Point(0, 0);
            this.browserHiderBox.Name = "browserHiderBox";
            this.browserHiderBox.Size = new System.Drawing.Size(948, 558);
            this.browserHiderBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage;
            this.browserHiderBox.TabIndex = 1;
            this.browserHiderBox.TabStop = false;
            // 
            // webBrowser1
            // 
            this.webBrowser1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.webBrowser1.Location = new System.Drawing.Point(4, 42);
            this.webBrowser1.MinimumSize = new System.Drawing.Size(20, 20);
            this.webBrowser1.Name = "webBrowser1";
            this.webBrowser1.ScriptErrorsSuppressed = true;
            this.webBrowser1.Size = new System.Drawing.Size(1007, 544);
            this.webBrowser1.TabIndex = 0;
            this.webBrowser1.Url = new System.Uri("about:blank", System.UriKind.Absolute);
            // 
            // options
            // 
            this.options.Controls.Add(this.loginGroup);
            this.options.Location = new System.Drawing.Point(4, 22);
            this.options.Name = "options";
            this.options.Padding = new System.Windows.Forms.Padding(3);
            this.options.Size = new System.Drawing.Size(944, 554);
            this.options.TabIndex = 1;
            this.options.Text = "Beállítások";
            this.options.UseVisualStyleBackColor = true;
            // 
            // loginGroup
            // 
            this.loginGroup.Controls.Add(this.textBox1);
            this.loginGroup.Controls.Add(this.label2);
            this.loginGroup.Controls.Add(this.label1);
            this.loginGroup.Controls.Add(this.loginName);
            this.loginGroup.Location = new System.Drawing.Point(4, 7);
            this.loginGroup.Name = "loginGroup";
            this.loginGroup.Size = new System.Drawing.Size(263, 152);
            this.loginGroup.TabIndex = 1;
            this.loginGroup.TabStop = false;
            this.loginGroup.Text = "Belépési adatok";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(128, 45);
            this.textBox1.Name = "textBox1";
            this.textBox1.PasswordChar = '*';
            this.textBox1.Size = new System.Drawing.Size(129, 20);
            this.textBox1.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 48);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(39, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Jelszó:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(84, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Felhasználónév:";
            // 
            // loginName
            // 
            this.loginName.Location = new System.Drawing.Point(128, 19);
            this.loginName.Name = "loginName";
            this.loginName.Size = new System.Drawing.Size(129, 20);
            this.loginName.TabIndex = 0;
            // 
            // botLogBox
            // 
            this.botLogBox.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.botLogBox.Location = new System.Drawing.Point(0, 580);
            this.botLogBox.Name = "botLogBox";
            this.botLogBox.Size = new System.Drawing.Size(945, 140);
            this.botLogBox.TabIndex = 1;
            this.botLogBox.Text = "";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(947, 718);
            this.Controls.Add(this.botLogBox);
            this.Controls.Add(this.tabControl1);
            this.Name = "Form1";
            this.Text = "SFBot";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.tabControl1.ResumeLayout(false);
            this.seaMap.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.browserHiderBox)).EndInit();
            this.options.ResumeLayout(false);
            this.loginGroup.ResumeLayout(false);
            this.loginGroup.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage seaMap;
        private System.Windows.Forms.TabPage options;
        private System.Windows.Forms.PictureBox browserHiderBox;
        private System.Windows.Forms.WebBrowser webBrowser1;
        private System.Windows.Forms.RichTextBox botLogBox;
        private System.Windows.Forms.GroupBox loginGroup;
        private System.Windows.Forms.TextBox loginName;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
    }
}

