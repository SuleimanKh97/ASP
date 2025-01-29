using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Xml.Linq;
namespace day7
{
    public partial class editPageAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bookEdit_Click(object sender, EventArgs e)
        {
            string bookId = txtBookId.Text;
            string bookName = txtBookName.Text;
            string bookKind = txtBookKind.Text;
            string bookLevel = txtBookLevel.Text;

            string filePath = Server.MapPath("~/Books.txt");
            string[] lines = File.ReadAllLines(filePath);
            string updatedContent = "";

            foreach (var line in lines)
            {
                var data = line.Split(',');

                if (data[0] == bookId)
                {
                    updatedContent += $"{bookId},{bookName},{bookKind},{bookLevel}\n";
                }
                else
                {
                    updatedContent += line + "\n";
                }
            }

            File.WriteAllText(filePath, updatedContent);
        }

        protected void serarchBook_Click(object sender, EventArgs e)
        {
            string id = searchTxt.Text;
            string filePath = Server.MapPath("~/Books.txt");

            string[] data = File.ReadAllLines(filePath);
            foreach (string line in data)
            {
                string[] parts = line.Split(',');
                if (parts[0] == id)
                {
                    bookId.Text = parts[0];
                    bookName.Text = parts[1];
                    bookType.Text = parts[2];
                    bookLevel.Text = parts[3];
                    break;
                }
            }
        }
    }
}