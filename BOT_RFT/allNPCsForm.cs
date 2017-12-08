using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SFCollector
{
    public partial class AllNPCsForm : Form
    {
        public List<string> selectedNPCs;

        public AllNPCsForm(List<string> NPCs)
        {
            InitializeComponent();
            NPCs.Distinct();
            NPCs.Sort();
            foreach (var npc in NPCs)
            {
                this.npcListBox.Items.Add(npc);
            }
            this.selectedNPCs = new List<string>();
            Console.Write("NPCs loaded.");
        }

        private void NpcsListBox_ItemCheck(object sender, ItemCheckEventArgs e)
        {
            if (this.selectedNPCs.Contains(this.npcListBox.Items[e.Index].ToString()) && e.NewValue == CheckState.Unchecked)
            {
                this.selectedNPCs.RemoveAll(npc => npc == this.npcListBox.Items[e.Index].ToString());
            }
            if (!this.selectedNPCs.Contains(this.npcListBox.Items[e.Index].ToString()) && e.NewValue == CheckState.Checked)
            {
                this.selectedNPCs.Add(this.npcListBox.Items[e.Index].ToString());
            }
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.OK;
        }
    }
}
