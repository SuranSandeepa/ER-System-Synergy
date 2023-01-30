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
        string un;        

        protected void Page_Load(object sender, EventArgs e)
        {

            un = (string)Session["un"];

            if (un == "admin" || un == "Admin")
            {
                btnFview.Enabled = true;
            }
            else
            {
                btnFview.Enabled = false;
            }
        }
    }
}