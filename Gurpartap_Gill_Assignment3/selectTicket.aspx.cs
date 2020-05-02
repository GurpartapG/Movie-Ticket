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
    public partial class selectTicket : System.Web.UI.Page
    {
        bool Tuesday = false;
        int selectedId = 0;
        string timeslot = "";
        int numGeneral = 0;
        int numSenior = 0;
        int numTuesday = 0;
        int timeid = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            string day = Session["day"].ToString();

            if(day.Equals("Tuesday"))
            {
                Tuesday = true;
                lblTuesday.Visible = true;
                lblTuesdayPrice.Visible = true;
                tbTuesday.Visible = true;
            }

            timeid = Convert.ToInt32(Session["timeId"]);

            selectedId = Convert.ToInt32(Session["id"]);

            timeslot = Session["timeslot"].ToString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if(tbGeneral.Text!="")
            {
                numGeneral = Convert.ToInt32(tbGeneral.Text);

                //updateSeats(selectedId, timeid, timeslot, numGeneral);
            }

            if(tbSenior.Text!="")
            {
                numSenior = Convert.ToInt32(tbSenior.Text);
            }
             
            if (Tuesday == true)
            {
                if(tbTuesday.Text!="")
                {
                    numTuesday = Convert.ToInt32(tbTuesday.Text);
                }
            }

            Session["numGeneral"] = numGeneral;
            Session["numSenior"] = numSenior;
            Session["numTuesday"] = numTuesday;

            Server.Transfer("reviewInformation.aspx");
        }

        private void updateSeats(int mid,int tid,string timeslot,int num)
        {
            string seats = "";
            string timing = "";

            switch(tid)
            {
                case 1:
                    seats = "Seats1";
                    timing = "Timing1";
                    break;
                case 2:
                    seats = "Seats2";
                    timing = "Timing2";
                    break;
                case 3:
                    seats = "Seats3";
                    timing = "Timing3";
                    break;
            }

            /*
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = "server=(LocalDB)\\MSSQLLocalDB;database=Movie;Integrated Security =SSPI";

                try
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        conn.Open();
                        cmd.Connection = conn;
                        cmd.CommandText = "UPDATE MovieDetails Set '"+seats+"'"+ "=('"+seats+"'" +"-"+ "'" + num+"')" + "WHERE MovieID = '" + mid + "' AND '" + timing + "' ='" + timeslot + "'";
                        cmd.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error");
                    Response.Write(ex.ToString());
                }
            } */
        }
    }
}