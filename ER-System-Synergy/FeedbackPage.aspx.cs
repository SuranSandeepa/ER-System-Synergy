using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ER_System_Synergy
{
    public partial class FeedbackPage : System.Web.UI.Page
    {
        //string un;        

        protected void Page_Load(object sender, EventArgs e)
        {

            //un = (string)Session["un"];
            string un = (Session["un"] != null) ? (string)Session["un"] : "";

            if (un == "Admin")
            {
                btnFview.Visible = true;
            }
            else
            {
                btnFview.Visible = false;
            }
        }
    }
}