using System;
using System.Data.SqlClient;
using System.Configuration;
namespace WebApplication4.Authenication
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserLoggedIn"] != null)
            {
                Response.Redirect("~/Home/hom1.aspx"); // Redirect to main page if already logged in
            }
        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {

            string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString; // Update with your connection string
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                string query = "SELECT COUNT(*) FROM Reg WHERE UserName = @UserName AND Password = @Password";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@UserName", txt_loginUsername.Text);
                    cmd.Parameters.AddWithValue("@Password", txt_loginPassword.Text); // Consider hashing passwords for security

                    int count = (int)cmd.ExecuteScalar();
                    if (count > 0)
                    {
                        Session["UserLoggedIn"] = true; // Set session variable
                        lbl_loginMessage.Text = "Login successful!";
                        // Redirect to a dashboard or main page after successful login
                        Response.Redirect("~/Hmoe/hom1.aspx"); // Change to your main page
                    }
                    else
                    {
                        // Check if the user is registered
                        string checkUserQuery = "SELECT COUNT(*) FROM Reg WHERE UserName = @UserName";
                        using (SqlCommand checkCmd = new SqlCommand(checkUserQuery, conn))
                        {
                            checkCmd.Parameters.AddWithValue("@UserName", txt_loginUsername.Text);
                            int userCount = (int)checkCmd.ExecuteScalar();

                            if (userCount == 0)
                            {
                                lbl_loginMessage.Text = "User not found. Please register first.";
                                btn_Register.Visible = false; // Show the Register button
                            }
                            else
                            {
                                lbl_loginMessage.Text = "Invalid password. Please try again.";
                                btn_Register.Visible = false; // Hide the Register button
                            }
                        }
                    }
                }
            }
        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {
            // Redirect to the registration page
           Response.Redirect("~/Authenication/Registration.aspx"); // Update with the correct path to your registration page
        }
    }
}

                     
        