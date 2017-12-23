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
    public partial class Login : System.Web.UI.Page

    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sqlda = new SqlDataAdapter();
        DataSet ds = new DataSet();
       


        protected void Page_Load(object sender, EventArgs e)
        {


            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["GYMConnectionString"].ConnectionString);
        }

        protected void login_B_Click(object sender, EventArgs e)
        {
            con.Open();
            try
            {
                string query = "select Name, u.[user_name], ur.[role_id], ur.role_name from Users u inner join  new_roles ur on u.role_id= ur.role_id  where u.user_name ='" + Name.Text + "' and u.user_password='" + Password.Text + "'";
                
                    sqlda.SelectCommand = new SqlCommand(query, con);
                    sqlda.Fill(ds, "Users");

                    if (ds.Tables[0].Rows.Count > 0)
                    {

                        Session["ID"] = ds.Tables[0].Rows[0]["role_id"];
                        Session["Name"] = ds.Tables[0].Rows[0]["Name"];
                        //int id = Convert.ToInt32(ds.Tables[0].Rows[0]["role_id"]);



                        Response.Redirect("Dashboard.aspx");

                    }

                    else
                    {
                        Response.Write("<script>alert('Password or Username is incorrect Please Try Again.')</script>");
                    }
            }

            catch { }

            //con.Open();
            //try
            //{

            //    string query = "select u.[user_name], ur.[role_id], r.role_name from Users u inner join  user_roll_id ur on u.user_id= ur.user_id inner join Roles r on ur.role_id=r.role_id   where u.user_name ='" + Name.Text + "' and u.user_password='" + Password.Text + "'";
            //    sqlda.SelectCommand = new SqlCommand(query, con);
            //    sqlda.Fill(ds, "Users");

            //    if (ds.Tables[0].Rows.Count > 0)
            //    {

            //        Session["ID"] = ds.Tables[0].Rows[0]["role_id"];
            //        int id = Convert.ToInt32(ds.Tables[0].Rows[0]["role_id"]);
            //        Response.Redirect("Admin.aspx");

            //    }

            //}

            //catch (Exception)
            //{
            //    Response.Write(e);
            //}

        }
    }
}