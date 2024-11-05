using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4.Authenication
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // Clear the session
            Session.Clear();
            Session.Abandon();
            lblLogoutMessage.Text = "You have successfully logged out.";

            // Redirect to login page after a brief delay
            Response.Redirect("~/Authenication/Login.aspx");
        }
    }
}