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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton1.CausesValidation = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MovieConnectionString"].ConnectionString);

                Conn.Open();

                string cmdstring = "Select count(*) from UserDetails where LastName = '" + tbun.Text + "'";

                SqlCommand checkuser = new SqlCommand(cmdstring, Conn);

                int temp = Convert.ToInt32(checkuser.ExecuteScalar().ToString());

                if (temp == 1)
                {
                    string cmd2 = "Select AccountNumber from UserDetails where LastName = '" + tbun.Text + "'";

                    SqlCommand pass = new SqlCommand(cmd2, Conn);

                    string password = pass.ExecuteScalar().ToString();

                    Conn.Close();

                    if (password.Equals(tbpw.Text))
                    {
                        Session["user"] = tbun.Text;
                        Session["account"] = tbpw.Text;

                        if (password.Equals("Admin01") && tbun.Text.Equals("Admin"))
                        {
                            Server.Transfer("admin.aspx");
                        }
                        else
                        {
                            Server.Transfer("selectMovie.aspx");
                        }
                    }

                    else
                    {
                        Label2.Visible = true;
                        Label2.Text = "Wrong credentials";
                    }
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["user"] = null;

            RequiredFieldValidator1.Enabled = false;
            RequiredFieldValidator2.Enabled = false;

            Server.Transfer("selectMovie.aspx");
        }
    }
}