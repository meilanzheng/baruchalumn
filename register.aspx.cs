using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace baruchalumn.pages
{
    public partial class WebForm1 : System.Web.UI.Page

    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_registration(object sender, EventArgs e)

        {
            int user_Id = 0;
            string constr = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("signup"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {


                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@User_name", RUName.Text.Trim());
                        cmd.Parameters.AddWithValue("@User_Password", RPassword.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", REmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@Last_Name", RLname.Text.Trim());
                        cmd.Parameters.AddWithValue("@First_name", RFname.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        user_Id = Convert.ToInt32(cmd.ExecuteScalar());

                        con.Close();
                    }

                    RUName.Text = String.Empty;
                    RPassword.Text = String.Empty;
                    REmail.Text = String.Empty;
                    RLname.Text = String.Empty;
                    RFname.Text = String.Empty;
                }
                string message = string.Empty;

                switch (user_Id)
                {
                    case -1:
                        message = "Username already exists.\\nPlease choose a different username.";
                        break;
                    case -2:
                        message = "Supplied email address has already been used.";
                        break;
                    default:

                        message = "Sign up successful, please go to home page to login";
                        break;
                }
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);

            }





        }

    }
}
