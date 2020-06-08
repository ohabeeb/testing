using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ABUPQAS
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Repeater1.Visible = false;
                Row.Visible = false;

            }


            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        private void LoadData()
        {
            string CS = ConfigurationManager.ConnectionStrings["ABUPQASCS"].ConnectionString;
            using (SqlConnection sqlConnection = new SqlConnection(CS))
            {
                SqlCommand sqlCommand = new SqlCommand("spGetPastQuestionAndSolutionbyCourseCode", sqlConnection);
                sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCommand.Parameters.AddWithValue("@CourseCode", SearchTextBox.Text);
                sqlConnection.Open();
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                Repeater1.DataSource = sqlDataReader;
                Repeater1.DataBind();
            }
            Repeater1.Visible = true;
            Row.Visible = true;
        }
    }
}