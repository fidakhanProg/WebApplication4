using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4.Hmoe
{
    public partial class hom1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserLoggedIn"] == null) // If not logged in
            {
                Response.Redirect("~/Authenication/Login.aspx"); // Redirect to login page
            }
        }
    }
}