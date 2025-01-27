using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace day7
{
    public partial class powerOfStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bookBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("seeAllBook.aspx");
        }

        protected void meetBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("showMeetingRoom.aspx");
        }
    }
}