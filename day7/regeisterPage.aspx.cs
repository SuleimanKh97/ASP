using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace day7
{
    public partial class regeisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regBtn_Click(object sender, EventArgs e)
        {
            string username = name.Text;
            string email = Email.Text;
            string password = Password.Text;
            string confirmPassword = Password1.Text;

            if (username == "")
            {
                lblMessage.Text = "user name is required!";
                lblMessage.Visible = true;
                lblMessage.CssClass = "error-message";
            }
            else if (email == "")
            {
                lblMessage.Text = "email is required!";
                lblMessage.Visible = true;
                lblMessage.CssClass = "error-message";
            }
            else if (password == "")
            {
                lblMessage.Text = "password is required!";
                lblMessage.Visible = true;
                lblMessage.CssClass = "error-message";
            }
            else if (confirmPassword == "")
            {
                lblMessage.Text = "confirm password is recuired!";
                lblMessage.Visible = true;
                lblMessage.CssClass = "error-message";
            }
            else if (password != confirmPassword)
            {
                lblMessage.Text = "passwords do not match!";
                lblMessage.Visible = true;
                lblMessage.CssClass = "error-message";
            }
            else
            { 
            string filePath = Server.MapPath("~/users.txt");

                if(!File.Exists(filePath))
                {
                    File.Create(filePath).Close();
                }

                string userData = $"{username},{email},{password}"; // formating

                //File.AppendAllText(filePath, userData);

                using (StreamWriter sw = new StreamWriter(filePath, true))
                {
                    sw.WriteLine(userData);
                }

                lblMessage.Text = "Registration successful!";

                lblMessage.Visible = true;
                Response.Redirect("loginPage.aspx");



            }
        }
    }
}