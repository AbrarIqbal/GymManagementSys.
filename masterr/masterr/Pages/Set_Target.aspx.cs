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
    public partial class Set_Target : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sqlda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["ID"]);


            if (id == 2)
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
                string key = Convert.ToString(Session["Name"]);

                SqlCommand cmd = new SqlCommand("insert into Target " + "(title,description,C_date,end_date,C_weight,E_weight,member) VALUES (@title,@description,@C_date,@end_date,@C_weight,@E_weight,@member)", con);
                cmd.Parameters.AddWithValue("@title", title.Text);
                cmd.Parameters.AddWithValue("@description", Description.Text);
                cmd.Parameters.AddWithValue("@C_date", S_Date.Text);
                cmd.Parameters.AddWithValue("@end_date", E_Date.Text);
                cmd.Parameters.AddWithValue("@C_weight", C_Weight.Text);
                cmd.Parameters.AddWithValue("@E_weight", T_Weight.Text);
                cmd.Parameters.AddWithValue("@member", key);
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Successfully Added!.')</script>");
            }

            catch
            {

                Response.Write("<script>alert('Error Check your data formats!')</script>");
            }
        

        }
    }
}