using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;




namespace baruchalumn
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public bool LoginAgainstDB(string login, string password)
        {
            bool response = false;

            SqlCommand myCommand = new SqlCommand("LoginToSystem", new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["conString"].ConnectionString));
            myCommand.Parameters.Add(new SqlParameter("@User_name", UsernameTB.Text));
            myCommand.Parameters.Add(new SqlParameter("@user_password", passwordTB.Text));
            myCommand.CommandType = CommandType.StoredProcedure;
            try
            {
                myCommand.Connection.Open();
                response = Convert.ToBoolean(myCommand.ExecuteScalar());
            }
            catch (Exception ex)
            {
                string error = ex.Message;
            }
            finally
            {
                myCommand.Connection.Close();
                myCommand.Dispose();
            }
            return response;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string message = string.Empty;
            string username = "meilan";
            string password = "meilan";
            if (LoginAgainstDB(username, password))
            {
                //Open your next wepage or main page
                Response.Redirect("Calendar1.aspx");
            }
            else
            {
                message = "user login invalid";
            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
        }

    }

}
