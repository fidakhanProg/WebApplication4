using System;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication4.Authenication
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialize the User ID if needed
            }
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString; // Update with your connection string
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                // Check if the username already exists
                string checkUserQuery = "SELECT COUNT(*) FROM Reg WHERE UserName = @UserName";
                using (SqlCommand checkCmd = new SqlCommand(checkUserQuery, conn))
                {
                    checkCmd.Parameters.AddWithValue("@UserName", txt_uname.Text);
                    int userCount = (int)checkCmd.ExecuteScalar();

                    if (userCount > 0)
                    {
                        lbl_message.Text = "User already registered. You can log in.";
                       // btn_Login.Visible = false; // Show the Login button
                    }
                    else
                    {
                        // Proceed with registration
                        string query = "INSERT INTO Reg (UserName, Password, MobileNo, Email, Address) VALUES (@UserName, @Password, @MobileNo, @Email, @Address)";
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@UserName", txt_uname.Text);
                            cmd.Parameters.AddWithValue("@Password", txt_pwd.Text); // Consider hashing passwords for security
                            cmd.Parameters.AddWithValue("@MobileNo", txt_contact.Text);
                            cmd.Parameters.AddWithValue("@Email", txt_email.Text);
                            cmd.Parameters.AddWithValue("@Address", txtaddress.Text);

                            try
                            {
                                cmd.ExecuteNonQuery();
                                lbl_message.Text = "Registration successful!";
                              
                            }
                            catch (Exception ex)
                            {
                                lbl_message.Text = "Error: " + ex.Message;
                            }
                        }
                    }
                }
            }
        }

        protected void btn_Return_Click(object sender, EventArgs e)
        {
            // Logic to return to a previous page or reset fields
        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            // Redirect to the login page
            Response.Redirect("~/Authenication/Login.aspx"); // Update with the correct path to your login page
        }
    }
}
