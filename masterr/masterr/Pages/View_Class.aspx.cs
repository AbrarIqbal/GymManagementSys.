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
    public partial class View_Class : System.Web.UI.Page
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
                User.Visible = false;
                Instructor.Visible = false;
            }
            else
                if (id==2)
            {
                User.Visible = false;
                Admin.Visible = false;
            }
            if (id == 3)
            {
                Instructor.Visible = false;
                Admin.Visible = false;
            }

            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["GYMConnectionString"].ConnectionString);
            //string key = Session["Name"].ToString();
            string key= Convert.ToString(Session["Name"]);

            string str = "select * from Class where Class_Instructor='" + key + "'";
            //where user='"+key+"'";
            SqlDataAdapter sda = new SqlDataAdapter(str, con);
            sda.Fill(ds);
            Instructor.DataSource = ds.Tables[0];
            Instructor.DataBind();

        }
    }
}