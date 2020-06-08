using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace ABUPQAS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                    if (Request.QueryString["id"] == "status")
                    {
                        StatusLable.Text = "Please login to download this file";
                        StatusLable.ForeColor = System.Drawing.Color.Red;
                    }
               
            }
            

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["ABUPQASCS"].ConnectionString;
            using (SqlConnection sqlConnection = new SqlConnection(CS))
            {
                SqlCommand sqlCommand = new SqlCommand("spValidateUser", sqlConnection);
                sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@UserName", Page.Session["UserName"] = UserNameTextBox.Text);
                string PasswordDecryption = FormsAuthentication.HashPasswordForStoringInConfigFile(PasswordTextBox.Text, "SHA1");
                sqlCommand.Parameters.AddWithValue("@Password", PasswordDecryption);

                sqlConnection.Open();
               int Result = Convert.ToInt32(sqlCommand.ExecuteScalar());
                if (Result > 0)
                {
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    StatusLable.Text = "Invalid Credentials";
                    StatusLable.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}