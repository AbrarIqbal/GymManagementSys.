using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Data;
using System.Web.Configuration;


namespace masterr.Pages
{
    public partial class General_Exercise_Plan : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sqlda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["ID"]);

            if (id==3)
            {
                Response.End();
                Response.Write("You have no access to this page content");
            }

            else
            {
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["GYMConnectionString"].ConnectionString);
            }
        }

        protected void Submit__Click(object sender, EventArgs e)
        {
            con.Open();
            
            try
            {
                SqlCommand cmd = new SqlCommand("insert into Exercise_Plan" + "(Title,Description,Member) VALUES (@Title,@Description,'General')", con);
                cmd.Parameters.AddWithValue("@Title", title.Text);
                cmd.Parameters.AddWithValue("@Description", E_Description.Text);
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Successfully Added!.')</script>");
            }

            catch
            {

                Response.Write("<script>alert('Error!!')</script>");
            }
        }
    }
}