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
    public partial class View_Diet_Plan : System.Web.UI.Page
    {

        SqlCommand sqlcmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Session["ID"]);



            if (id == 3)
            {
                Admin.Visible = false;
            }

            else
            {
                General.Visible = false;
                Specific.Visible = false;
                General_GV.Visible = false;
                Specific_V.Visible = false;
            }


        }

        protected void General_Click(object sender, EventArgs e)
        {
            Specific_V.Visible = false;
            General_GV.Visible = true;
        }

        protected void Specific_Click(object sender, EventArgs e)
        {
            General_GV.Visible = false;
            Specific_V.Visible = true;

            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["GYMConnectionString"].ConnectionString);

            string key = Convert.ToString(Session["Name"]);

            string str = "select Title,Description from Diet_Plan where Member='" + key + "'";
            SqlDataAdapter sda = new SqlDataAdapter(str, con);
            sda.Fill(ds);
            Specific_V.DataSource = ds.Tables[0];
            Specific_V.DataBind();
        }
    }
}