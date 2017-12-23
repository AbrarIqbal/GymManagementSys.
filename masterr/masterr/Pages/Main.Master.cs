using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;

namespace masterr.Pages
{
    public partial class Main : System.Web.UI.MasterPage
    {

        


        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["ID"] ==null && Session["Name"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            
            int id = Convert.ToInt32(Session["ID"]);

            if (id == 1)
            {
                View_MD_I.Visible = false;
            }

            if (id != 1)
            {
                Add_Member.Visible = false;
                Add_Instructor.Visible = false;
                Add_Class.Visible = false;
                Add_Exercise.Visible = false;
                Add_Diet.Visible = false;
                Add_Notification.Visible = false;
                Add_payment.Visible = false;
                View_MD_A.Visible = false;
                Targets.Visible = false;
                Add_Salary.Visible = false;
                Add_payment.Visible = false;

            }

            if (id == 3)
            {
                Medical_History.Visible = false;
                View_MD_A.Visible = false;
                View_MD_I.Visible = false;
                Add_diet_P.Visible = false;
                Add_Exercise_P.Visible = false;
                Diet_Specific_P.Visible = false;
                Exercise_Specific_P.Visible = false;
                Targets.Visible = true;
                View_Salary.Visible = false;
                Payment.Visible = false;
            }

            if (id == 2)
            {
                View_payment.Visible = false;
                pays.Visible = false;
            }

          

            
            

        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Home.aspx");
        }

        protected void Add_(object sender, EventArgs e)
        {
            Response.Redirect("AddMember.aspx");
        }

        protected void Add_Ins(object sender, EventArgs e)
        {
            Response.Redirect("Add_Instructor.aspx");
        }

        protected void Add_EX(object sender, EventArgs e)
        {
            Response.Redirect("Add_Exercise.aspx");
        }

        protected void Add_D(object sender, EventArgs e)
        {
            Response.Redirect("Add_Diet.aspx");
        }

        protected void Add_N(object sender, EventArgs e)
        {
            Response.Redirect("Add_Announcement.aspx");
        }

        protected void Add_C(object sender, EventArgs e)
        {
            Response.Redirect("Add_Class.aspx");
        }

        protected void View_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Members.aspx");
        }

        protected void View_Ins_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Instructor.aspx");
        }

        protected void View_D_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Diet.aspx");
        }

        protected void View_E_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Exercise.aspx");
        }

        protected void View_N_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Notification.aspx");
        }

        protected void View_M_Click(Object sender, EventArgs e)
        {
            Response.Redirect("Medical_History.aspx");
        }
        protected void View_MI_Click(object sender, EventArgs e)
        {
            Response.Redirect("Medical_History.aspx");
        }

        protected void View_C(object sender, EventArgs e)
        {
            Response.Redirect("View_Class.aspx");
        }

        protected void General_Click(object sender, EventArgs e)
        {
            Response.Redirect("General_Exercise_Plan.aspx");
        }

        protected void Specific_Click(object sender, EventArgs e)
        {
            Response.Redirect("Specific_Exercise_Plan.aspx");
        }

        protected void General_D_Plan(object sender, EventArgs e)
        {
            Response.Redirect("General_Diet_Plan.aspx");
        }

        protected void Specific_D_Plan(object sender, EventArgs e)
        {
            Response.Redirect("Specific_Diet_Plan.aspx");
        }

        protected void View_Ex_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Exercise_Plan.aspx");
        }

        protected void View_Di_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Diet_Plan.aspx");
                
        }

        protected void S_Target_Click(object sender, EventArgs e)
        {
            Response.Redirect("Set_Target.aspx");
        }

        protected void V_Target_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Target.aspx");
        }

        protected void Chat_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Index.html");
        }

        protected void A_Pay_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Payments.aspx");
        }

        protected void Ad_Sal_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Salary.aspx");
        }

        protected void V_Pay_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Payments.aspx");
        }

        protected void V_Sal_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Salary.aspx");
        }
    }
}