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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                       
           
        }

        protected void RegistrationButton_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["ABUPQASCS"].ConnectionString;
            using (SqlConnection sqlConnection = new SqlConnection(CS))
            {
                SqlCommand sqlCommand = new SqlCommand("spInsertUser", sqlConnection);
                sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@FirstName", FirstNameTextBox.Text);
                sqlCommand.Parameters.AddWithValue("@LastName", LastNameTextBox.Text);
                sqlCommand.Parameters.AddWithValue("@Gender", GenderDropDownList.SelectedValue);
                sqlCommand.Parameters.AddWithValue("@UserName", UserNameTextBox.Text);

                string PasswordEncripted = FormsAuthentication.HashPasswordForStoringInConfigFile(PasswordTextBox.Text, "SHA1");
                sqlCommand.Parameters.AddWithValue("@Password", PasswordEncripted);
                sqlCommand.Parameters.AddWithValue("@MobileNumber", MobileNumberTextBox.Text);
                sqlCommand.Parameters.AddWithValue("@Email", EmailTextBox.Text);

                SqlCommand sqlCommand1 = new SqlCommand("spValidateUserName", sqlConnection);               
                sqlCommand1.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCommand1.Parameters.AddWithValue("@UserName", UserNameTextBox.Text);

                sqlConnection.Open();

                int Result = Convert.ToInt32(sqlCommand1.ExecuteScalar());
                if (Result > 0)
                {
                    StatusLable.Text = "UserName already exit";
                }
                else
                {
                    sqlCommand.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}