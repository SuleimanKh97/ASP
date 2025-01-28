using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.IO;

namespace day7
{
    public partial class addbook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            string bookid = txtBookid.Text;
            string bookname = txtBookName.Text;
            string booktype = txtBookType.Text;
            string booklevel = txtBookLevel.Text;

            string booksData = $"{bookid},{bookname},{booktype},{booklevel}";
            string file = Server.MapPath("~/Books.txt");

            if (bookid == "" || bookname == "" || booktype == "" || booklevel == "")
            {
                lblmsg.Text = "Book Inforamtion are required";
                lblmsg.Visible = true;
            }
            else
            {
                if (!File.Exists(file))
                {
                    File.Create(file);
                }
            }
            File.AppendAllText(file, booksData + Environment.NewLine);
            lblmsg.Text = "Book Added Successfully";
            lblmsg.Visible = true;


        }
    }
}