using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace day7
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string Email = txtEmail.Text.Trim();

            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                lblMessage.Text = "Please fill all fields.";
                return;
            }

            string filePath = Path.Combine(Request.PhysicalApplicationPath, "users.txt");


            using (StreamWriter sw = new StreamWriter(filePath, true))
            {
                sw.WriteLine($"{Email}:{password}:{username}");
            }
            lblMessage.Text = "User registered successfully!";



        }
    }
}