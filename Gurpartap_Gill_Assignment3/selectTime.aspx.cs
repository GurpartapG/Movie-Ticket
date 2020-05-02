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
    public partial class selectTime : System.Web.UI.Page
    {
        int timeId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
           int selectedId = Convert.ToInt32(Session["id"]);

           using(SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = "server=(LocalDB)\\MSSQLLocalDB;database=Movie;Integrated Security =SSPI";

                try
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        conn.Open();
                        cmd.Connection = conn;
                        cmd.CommandText = "SELECT Timing1, Timing2, Timing3 from MovieDetails WHERE MovieID = '" + selectedId + "'";

                        SqlDataReader reader = cmd.ExecuteReader();

                        while(reader.Read())
                        {
                            rdbTiming1.Text = reader[0].ToString();
                            rdbTiming2.Text = reader[1].ToString();
                            rdbTiming3.Text = reader[2].ToString();

                        }
                    }
                }
                catch(Exception ex)
                {
                    Response.Write("Error");
                    Response.Write(ex.ToString());
                }
            }

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dateCal = Calendar1.SelectedDate;
            string date = dateCal.ToString("dd-MM-yyyy");
            string day = dateCal.DayOfWeek.ToString();
           
            Session["date"] = date;
            Session["day"] = day;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Calendar1.SelectedDate != null)
            {
                if(rdbTiming1.Checked==true || rdbTiming2.Checked == true || rdbTiming3.Checked == true)
                {
                    Session["timeId"] = timeId;
                    Server.Transfer("selectTicket.aspx");
                }
                else
                {
                    Label6.Text = "*Please select a show time";
                }
            }
            else
            {
                Label5.Text = "*Please select a date";
            }            
        }
        
        protected void rdbTiming1_CheckedChanged(object sender, EventArgs e)
        {
            if(rdbTiming1.Checked)
            {
                Session["timeslot"] = rdbTiming1.Text;
                timeId = 1;
            }
        }

        protected void rdbTiming2_CheckedChanged(object sender, EventArgs e)
        {      
            if (rdbTiming2.Checked)
            {
                Session["timeslot"] = rdbTiming2.Text;
                timeId = 2;
            }   
        }

        protected void rdbTiming3_CheckedChanged(object sender, EventArgs e)
        {
            if (rdbTiming3.Checked)
            {
                Session["timeslot"] = rdbTiming3.Text;
                timeId = 3;
            }
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.CompareTo(DateTime.Today) < 0)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
}