using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace day7
{
    public partial class seeAllBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string filePath = Server.MapPath("~/Books.txt");

            if (File.Exists(filePath))
            {
                string[] lines = File.ReadAllLines(filePath);

                if (lines.Length > 0)
                {
                    foreach (var line in lines)
                    {
                        string[] bookData = line.Split(',');

                        string rowHtml = $"<tr><td>{bookData[0]}</td><td>{bookData[1]}</td><td>{bookData[2]}</td><td>{bookData[3]}</td></tr>";
                        booksTableBody.InnerHtml += rowHtml;
                    }
                }

            }

        }
    }
}