using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ER_System_Synergy
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text.ToLower() == "admin" && txtPassword.Text == "12345")
            {
                Session["un"] = "Admin";
                Session["pw"] = txtPassword.Text;

                Response.Redirect("HomePage.aspx");
            }
            else if (txtUsername.Text.ToLower() == "er" && txtPassword.Text == "123")
            {
                Session["un"] = "ER";
                Session["pw"] = txtPassword.Text;

                Response.Redirect("HomePage.aspx");
            }
            else if (txtUsername.Text.ToLower() == "hod" && txtPassword.Text == "12")
            {
                Session["un"] = "HOD";
                Session["pw"] = txtPassword.Text;

                Response.Redirect("HomePage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Login');</script>");
            }
        }

    }
}