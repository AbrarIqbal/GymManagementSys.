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
    public partial class Add_Instructor : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sqlda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["GYMConnectionString"].ConnectionString);

        }

        protected void Submit__Click(object sender, EventArgs e)
        {
                
            con.Open();

            try
            {
                SqlCommand cmd = new SqlCommand("insert into Users " + "(user_name,user_password,Name,Mail,Address,DOB,Contact,role_id) VALUES (@user_name,@user_password,@Name,@Mail,@Address,@DOB,@Contact,2)", con);
                cmd.Parameters.AddWithValue("@user_name",User_name.Text);
                cmd.Parameters.AddWithValue("@user_password",User_password.Text);
                cmd.Parameters.AddWithValue("@Name",Full_Name.Text);
                cmd.Parameters.AddWithValue("@Mail",Email_id.Text);
                cmd.Parameters.AddWithValue("@Address",Address.Text);
                cmd.Parameters.AddWithValue("@DOB",DOB.Text);
                cmd.Parameters.AddWithValue("@Contact",Contact.Text);

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Successfully Registered!.')</script>");
            }

            catch 
            {
                
                Response.Write("<script>alert('Error!!')</script>");
            }
        



        }


    }
}