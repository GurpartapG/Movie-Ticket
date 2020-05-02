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
    public partial class reviewInformation : System.Web.UI.Page
    {
        const double GeneralPrice = 15.00;
        const double SeniorPrice = 5.00;
        const double TuesdayPrice = 5.00;
        const double DiscountRate = 0.20;
        const double Tax = 0.13;
        bool tuesday = false;
        string user;

        protected void Page_Load(object sender, EventArgs e)
        {
            string day = Session["day"].ToString();

            //Label23.Text = day;

            if (day.Equals("Tuesday"))
            {
                tuesday = true;
                lblTuesday.Visible = true;
                lblTuesdayPrice.Visible = true;
                lblTuesdayQty.Visible = true;
            }


            if (Session["user"]!=null)
            {
                user = Session["user"].ToString();
                string account = Session["account"].ToString();
                getUserData(account);
            }
            else
            {
                lblAccount.Visible = false;
                lblFirstName.Visible = false;
                lblLastName.Visible = false;
            }            

            int movieId = Convert.ToInt32(Session["id"].ToString());
            getMovieData(movieId);

            lblGeneralPrice.Text = "$" + Convert.ToDouble(GeneralPrice);
            lblSeniorPrice.Text = "$" + Convert.ToDouble(SeniorPrice);
            lblTuesdayPrice.Text = "$" + Convert.ToDouble(TuesdayPrice);

            getTicketData();

            savePurchase();
        }

        private void getUserData(string account)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = "server=(LocalDB)\\MSSQLLocalDB;database=Movie;Integrated Security =SSPI";

                try
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        conn.Open();
                        cmd.Connection = conn;
                        cmd.CommandText = "SELECT FirstName, LastName from UserDetails WHERE AccountNumber = '" + account + "'";

                        SqlDataReader reader = cmd.ExecuteReader();

                        while (reader.Read())
                        {
                            lblFirstName.Text = reader[0].ToString();
                            lblLastName.Text = reader[1].ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error");
                    Response.Write(ex.ToString());
                }
            }

            lblAccount.Text = account;
        }

        private void getMovieData(int id)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = "server=(LocalDB)\\MSSQLLocalDB;database=Movie;Integrated Security =SSPI";

                try
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        conn.Open();
                        cmd.Connection = conn;
                        cmd.CommandText = "SELECT MovieName from MovieDetails WHERE MovieID = '" + id + "'";

                        SqlDataReader reader = cmd.ExecuteReader();

                        while (reader.Read())
                        {
                            lblMovie.Text = reader[0].ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error");
                    Response.Write(ex.ToString());
                }

                lblTime.Text = Session["timeslot"].ToString();
                string date = Session["date"].ToString();
                lblDate.Text = date;
                //lblDate.Text = date.ToString("dd-MM-yyyy");
            }
        }

        private void getTicketData()
        {
            int generalQty = Convert.ToInt32(Session["numGeneral"].ToString());
            int seniorQty = Convert.ToInt32(Session["numSenior"].ToString());
            int tuesdayQty;
            double price;
            double discount;
            double discountedAmount;
            double totalAmount;

            if (tuesday==true)
            {
                tuesdayQty = Convert.ToInt32(Session["numTuesday"].ToString());
            }
            else
            {
                tuesdayQty = 0;
            }

             price = (generalQty * GeneralPrice) + (seniorQty * SeniorPrice) + (tuesdayQty * TuesdayPrice);

            if(user!=null)
            {
                discount = (price * DiscountRate);
            }
            else
            {
                discount = 0;
            }

            discountedAmount = (price - discount);
            totalAmount = (discountedAmount * Tax) + discountedAmount;
            lblGeneralQty.Text = generalQty.ToString();
            lblSeniorQty.Text = seniorQty.ToString();
            lblTuesdayQty.Text = tuesdayQty.ToString();
            lblPrice.Text = "$" + price.ToString();
            lblDiscount.Text = "$" + discount.ToString();
            lblAmount.Text = "$" + totalAmount.ToString();
        }

        private void savePurchase()
        {
            try
            {
                SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MovieConnectionString"].ConnectionString);

                Conn.Open();

                string insertString = "Insert into Purchase(AccountNumber,MovieName,Date,TimeSlot,GeneralTickets, SeniorTickets, TuesdayTickets,Amount)" + "VALUES (@AccountNumber,@MovieName,@Date,@TimeSlot,@GeneralTickets,@SeniorTickets,@TuesdayTickets,@Amount)";

                SqlCommand insertUser = new SqlCommand(insertString, Conn);

                insertUser.Parameters.AddWithValue("@AccountNumber", lblAccount.Text);
                insertUser.Parameters.AddWithValue("@MovieName", lblMovie.Text);
                insertUser.Parameters.AddWithValue("@Date", lblDate.Text);
                insertUser.Parameters.AddWithValue("@TimeSlot", lblTime.Text);
                insertUser.Parameters.AddWithValue("@GeneralTickets",lblGeneralQty.Text);
                insertUser.Parameters.AddWithValue("@SeniorTickets", lblSeniorQty.Text);
                insertUser.Parameters.AddWithValue("@TuesdayTickets", lblTuesdayQty.Text);
                insertUser.Parameters.AddWithValue("@Amount",lblAmount.Text);


                insertUser.ExecuteNonQuery();

                Conn.Close();

               //Response.Redirect("Login.aspx");
            }
            catch (Exception Ex)
            {
                Response.Write("Error");
                Response.Write(Ex.ToString());
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //Session.Abandon();
            Session.RemoveAll();
            Server.Transfer("Login.aspx");
        }
    }
}