using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.UI.WebControls.Expressions;
using System.Xml.Linq;

namespace day7
{
    public partial class profileuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {
            string email = searchTxt.Text;
            string filePath = Server.MapPath("~/users.txt");

            string[] data = File.ReadAllLines(filePath);
            foreach(string line in data)
            {
                string[] parts = line.Split(',');
                if (parts[1] == email)
                {
                    name.Text = parts[0];
                    Email.Text = parts[1];
                    Password.Text = parts[2];
                    
                    break;
                }
            }


        }

        protected void editBtn_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("~/users.txt");
            string[] lines = File.ReadAllLines(filePath);
            string email = searchTxt.Text;
            //string updatedContent = "";




            string[] datausers = File.ReadAllLines(filePath);
            for (int i = 0; i < datausers.Length; i++)
            {
                string[] user = datausers[i].Split(',');
                if (user[1] == email)
                {
                    datausers[i] = $"{name.Text},{Email.Text},{Password.Text}";
                    File.WriteAllLines(filePath, datausers);
                    return;
                }
            }

            //File.WriteAllText(filePath, updatedContent);
        }
    }
    
}