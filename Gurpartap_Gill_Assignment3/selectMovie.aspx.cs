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

    public partial class selectMovie : System.Web.UI.Page
    {
        int movieId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["id"] = null;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            movieId = 1;
            Session["id"] = movieId;
            Server.Transfer("selectTime.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            movieId = 2;
            Session["id"] = movieId;
            Server.Transfer("selectTime.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            movieId = 3;
            Session["id"] = movieId;
            Server.Transfer("selectTime.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            movieId = 5;
            Session["id"] = movieId;
            Server.Transfer("selectTime.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            movieId = 6;
            Session["id"] = movieId;
            Server.Transfer("selectTime.aspx");
        }

    }
}