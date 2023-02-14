using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace ER_System_Synergy
{
    public partial class ExcelUploadPage : System.Web.UI.Page
    {

        //Create a connection string to connect to the SQL Server database
        string sqlConnectionString = DBConnection.ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UploadExcelToDB1_Click(object sender, EventArgs e)
        {
            if (ExcelFileUploadDB1.HasFile)
            {
                String d1date, d1pn, d1epf, d1name, d1gender, d1joindate, d1team, d1classification, d1shift;
                d1date = DateTime.Now.ToString("dd/MM/yyyy");

                string path = Path.GetFileName(ExcelFileUploadDB1.FileName);

                path = path.Replace(" ", "");
                ExcelFileUploadDB1.SaveAs(Server.MapPath("~/ExcelUpload/") + path);
                String ExcelPath = Server.MapPath("~/ExcelUpload/") + path;
                OleDbConnection mycon = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties=Excel 8.0; Persist Security Info = False");
                mycon.Open();
                OleDbCommand cmd = new OleDbCommand("select * from [Sheet1$]", mycon);
                OleDbDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {

                    //d1date = dr[0].ToString();
                    d1pn = dr[0].ToString();
                    d1epf = dr[1].ToString();
                    d1name = dr[2].ToString();
                    d1gender = dr[3].ToString();
                    d1joindate = dr[4].ToString();
                    d1team = dr[5].ToString();
                    d1classification = dr[6].ToString();
                    d1shift = dr[7].ToString();

                    SaveExcelData(d1date, d1pn, d1epf, d1name, d1gender, d1joindate, d1team, d1classification, d1shift);

                }

                //Alert
                Response.Write("<script>alert('Data Saved Successfully');</script>");

                mycon.Close();

                File.Delete(ExcelPath);

            }
            else
            {
                // Alert to show that no file has been selected
                Response.Write("<script>alert('Please select a file!');</script>");

            }
        }

        private void SaveExcelData(String d1date, String d1pn, String d1epf, String d1name, String d1gender, String d1joindate, String d1team, String d1classification, String d1shift)
        {
            String query = "INSERT INTO ERDatabase1(d1date, d1pn, d1epf, d1name, d1gender, d1joindate, d1team, d1classification, d1shift ) values('" + d1date + "','" + d1pn + "','" + d1epf + "','" + d1name + "','" + d1gender + "','" + d1joindate + "','" + d1team + "','" + d1classification + "','" + d1shift + "')";
            SqlConnection con = new SqlConnection(sqlConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void ViewDB1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Database1ViewPage.aspx");
        }
    }

}
