using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.IO;

namespace day7
{
    public partial class loginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lognBtn_Click(object sender, EventArgs e)
        {
            string email = Email.Text;
            string password = Password.Text;
            //string main = "admin";
            //string mainPassword = "123";

            string filePath = Server.MapPath("~/users.txt");
            string adminPath = Server.MapPath("~/admin.txt");

            string[] admin = File.ReadAllLines(adminPath);
            string[] users = File.ReadAllLines(filePath);
            foreach (string user in users)
            {
                string[] parts = user.Split(',');
                if (parts[1] == email && parts[2] == password)
                {
                    Response.Redirect("powerOfStudent.aspx");
                    return;
                }
                

            }
            string[] parts1 = admin[0].Split(',');
            if (parts1[1] == "admin" && parts1[2] == "123")
            {
                Response.Redirect("powerOfStudentAdmin.aspx");
                return;
            }


            lblMessage.Text = "Invalid username or password!";

            lblMessage.Visible = true;


        }
    }
}