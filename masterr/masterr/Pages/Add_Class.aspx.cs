using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
namespace masterr.Pages
{
    public partial class Add_Class : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sqlda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["ID"]);

            if (id != 1)
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
                SqlCommand cmd = new SqlCommand("insert into Class " + "(Class_Title,Class_Date,Class_Time,Class_Day,Class_Instructor) VALUES (@Class_Title,@Class_Date,@Class_Time,@Class_Day,@Class_Instructor)", con);
                cmd.Parameters.AddWithValue("@Class_Title", Class_name.Text);
                cmd.Parameters.AddWithValue("@Class_Date", C_Date.Text);
                cmd.Parameters.AddWithValue("@Class_Time", C_Time.Text);
                cmd.Parameters.AddWithValue("@Class_Day", Day_.SelectedValue);
                cmd.Parameters.AddWithValue("@Class_Instructor", Ins_.SelectedValue);



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