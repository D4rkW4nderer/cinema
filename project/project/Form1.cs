using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.Common;
using MySql.Data.MySqlClient;

namespace project
{
	public partial class Form1 : Form
	{
		string login = "";
		string password = "";

		public Form1()
		{
			InitializeComponent();
		}

		private void button1_Click(object sender, EventArgs e)
		{
			MySqlConnection conn = null;
			try
			{
				string connString = "server=localhost;user=" + this.login + ";password=" + this.password + ";database=cinema";
				conn = new MySqlConnection(connString);
				conn.Open();
				MySqlCommand cmd = conn.CreateCommand();
				cmd.CommandText = "SELECT name, about FROM directors";
				MySqlDataReader reader = cmd.ExecuteReader();
				while (reader.Read())
				{
					dataGridView1.Rows.Add(new string[] {
													  reader.GetValue(0).ToString(),
													  reader.GetValue(1).ToString() });
				}
			}
			catch(Exception ex)
			{
				MessageBox.Show(ex.Message);
			}

			finally
			{
				conn.Close();
			}
		}

		private void Form1_Shown(object sender, EventArgs e)
		{
			Form2 form = new Form2();
			if (form.ShowDialog() != DialogResult.OK)
			{
				this.Close();
			}
			else
			{
				this.login = form.getLogin();
				this.password = form.getPassword();
				button1_Click(sender, e);
			}
		}
	}
}
