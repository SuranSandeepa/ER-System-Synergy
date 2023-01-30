using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ER_System_Synergy
{
    public partial class HomePage : System.Web.UI.Page
    {

        string un;

        protected void Page_Load(object sender, EventArgs e)
        {
            //un = (string)Session["un"];

            //if(un == "admin" || un == "Admin")
            //{
            //    btnFeedback.Enabled = true;
            //}
            //else
            //{
            //    btnFeedback.Enabled = false;
            //}
        }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("FeedbackPage.aspx");
        }
    }
}