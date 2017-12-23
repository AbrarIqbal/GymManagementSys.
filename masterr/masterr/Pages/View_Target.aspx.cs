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
    public partial class View_Target : System.Web.UI.Page
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
                Admin.Visible = true;
            }

            else
                if (id == 3)
                {
                    User.Visible = true;
                    Admin.Visible = false;
                }
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["GYMConnectionString"].ConnectionString);
            string key = Convert.ToString(Session["Name"]);
            string str = "select title,description,C_date,end_date,C_weight,E_weight from Target where member='" + key + "'";
            SqlDataAdapter sda = new SqlDataAdapter(str, con);
            sda.Fill(ds);
            User.DataSource = ds.Tables[0];
            User.DataBind();

        }
    }
}