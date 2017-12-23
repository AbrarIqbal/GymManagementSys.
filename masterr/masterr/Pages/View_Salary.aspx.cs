using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace masterr.Pages
{
    public partial class View_Salary : System.Web.UI.Page
    {

        SqlCommand sqlcmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Session["ID"]);

            if (id == 1)
            {
                Instructor_GV.Visible = false;
                statuss.Visible = false;
            }

            else
                if (id == 2)
                {
                    Admin_GV.Visible = false;
                }

            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["GYMConnectionString"].ConnectionString);
            //string key = Session["Name"].ToString();
            string key = Convert.ToString(Session["Name"]);

            string str = "select Ammount,Users_P from Payment where Users_P='" + key + "'";
            //where user='"+key+"'";
            SqlDataAdapter sda = new SqlDataAdapter(str, con);
            sda.Fill(ds);
            Instructor_GV.DataSource = ds.Tables[0];
            Instructor_GV.DataBind();


        }
    }
}