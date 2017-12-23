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
    public partial class Add_Salary : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("insert into Payment " + "(Ammount,Users_P,type_P) VALUES (@Ammount,@Users_P,'Salary')", con);
                cmd.Parameters.AddWithValue("@Ammount", payments.Text);
                cmd.Parameters.AddWithValue("@Users_P", Instructor_List.SelectedValue);
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