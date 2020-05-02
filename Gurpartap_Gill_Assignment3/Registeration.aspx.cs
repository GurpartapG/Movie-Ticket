using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;


namespace Gurpartap_Gill_Assignment3
{
    public partial class Registeration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MovieConnectionString"].ConnectionString);

                Conn.Open();

                string cmdstring = "Select count(*) from UserDetails where AccountNumber = '" + tbAccount.Text + "'";

                SqlCommand userexist = new SqlCommand(cmdstring, Conn);

                int temp = Convert.ToInt32(userexist.ExecuteScalar().ToString());

                Conn.Close();

                if (temp == 1)
                {
                    Response.Write("This account number already exists");
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MovieConnectionString"].ConnectionString);

                Conn.Open();

                string insertString = "Insert into UserDetails(AccountNumber,FirstName,LastName)" + "VALUES (@AccountNumber,@FirstName,@LastName)";

                SqlCommand insertUser = new SqlCommand(insertString, Conn);

                insertUser.Parameters.AddWithValue("@AccountNumber", tbAccount.Text);
                insertUser.Parameters.AddWithValue("@FirstName", tbFname.Text);
                insertUser.Parameters.AddWithValue("@LastName", tbLname.Text);

                insertUser.ExecuteNonQuery();

                Conn.Close();

                Response.Redirect("Login.aspx");
            }
            catch (Exception Ex)
            {
                Response.Write("Error");
                Response.Write(Ex.ToString());
            }
        }
    }
}