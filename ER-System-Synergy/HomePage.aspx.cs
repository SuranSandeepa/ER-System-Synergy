using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.OleDb;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace ER_System_Synergy
{
    public partial class HomePage : System.Web.UI.Page
    {

        string un;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["un"] as string == "Admin")
            {
                btnFview.Visible = true;
            }
            else
            {
                btnFview.Visible = false;
            }
        }


        protected void btnRSave_Click(object sender, EventArgs e)
        {

            string rbValue;

            //check radio btn value
            if (rbExcellent.Checked)
            {
                rbValue = "Excellent";
            }
            else if (rbGood.Checked)
            {
                rbValue = "Good";
            }
            else if (rbNeutral.Checked)
            {
                rbValue = "Neutral";
            }
            else
            {
                rbValue = "Poor";
            }

            if (Fepf.Text == string.Empty)
            {
                //Alert
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('All Fields are required!!');", true);
            }
            else
            {
                using (SqlConnection connection = new SqlConnection(DBConnection.ConnectionString))
                {
                    connection.Open();
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO ERFeedbackForm(fdate,fepf,fq1,fselect,freason) VALUES(@fdate, @fepf, @fq1, @fselect, @freason)", connection))
                    {
                        cmd.Parameters.AddWithValue("@fdate", DateTime.Now);
                        cmd.Parameters.AddWithValue("@fepf", Fepf.Text);
                        cmd.Parameters.AddWithValue("@fq1", Fq1.Text);
                        cmd.Parameters.AddWithValue("@fselect", rbValue);
                        cmd.Parameters.AddWithValue("@freason", Freason.Text);
                        cmd.ExecuteNonQuery();
                    }
                    connection.Close();
                }

                //Alert
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Data Saved Successfully');", true);
                Fepf.Text = "";
                Freason.Text = "";
                Fq1.Text = "";
                rbExcellent.Checked = false;
                rbGood.Checked = false;
                rbNeutral.Checked = false;
                rbPoor.Checked = false;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Fepf.Text = "";
            Freason.Text = "";
            Fq1.Text = "";
            rbExcellent.Checked = false;
            rbGood.Checked = false;
            rbNeutral.Checked = false;
            rbPoor.Checked = false;
        }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("FeedbackViewPage.aspx");
        }
    }
}