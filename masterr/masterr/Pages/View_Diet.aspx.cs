using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace masterr.Pages
{
    public partial class View_Diet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["ID"]);

            if (id == 1)
            {
                User.Visible = false;
            }
            else
            {
                Admin.Visible = false;
            }
        }
    }
}