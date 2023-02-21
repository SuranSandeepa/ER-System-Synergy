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

        //Excel Upload DB1------------------------------------------
        protected void UploadExcelToDB1_Click(object sender, EventArgs e)
        {
            if (ExcelFileUploadDB1.HasFile)
            {
                String d1date, d1pn, d1epf, d1name, d1gender, d1joindate, d1team, d1classification, d1shift, d1factory, d1gl, d1er, d1vsl, d1job;
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
                    d1factory = dr[8].ToString();
                    d1gl = dr[9].ToString();
                    d1er = dr[10].ToString();
                    d1vsl = dr[11].ToString();
                    d1job = dr[12].ToString();

                    SaveExcelData(d1date, d1pn, d1epf, d1name, d1gender, d1joindate, d1team, d1classification, d1shift, d1factory, d1gl, d1er, d1vsl, d1job);

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

        //saveExcelData DB1
        private void SaveExcelData(string d1date, string d1pn, string d1epf, string d1name, string d1gender, string d1joindate, string d1team, string d1classification, string d1shift, string d1factory, string d1gl, string d1er, string d1vsl, string d1job)
        {
            String query = "INSERT INTO ERDatabase1(d1date, d1pn, d1epf, d1name, d1gender, d1joindate, d1team, d1classification, d1shift, d1factory, d1gl, d1er, d1vsl, d1job ) values('" + d1date + "','" + d1pn + "','" + d1epf + "','" + d1name + "','" + d1gender + "','" + d1joindate + "','" + d1team + "','" + d1classification + "','" + d1shift + "','" + d1factory + "','" + d1gl + "','" + d1er + "','" + d1vsl + "','" + d1job + "')";
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


        //Delete today's data DB1
        protected void DeleteDB1_Click(object sender, EventArgs e)
        {
            string currentDate = DateTime.Now.ToString("dd/MM/yyyy");
            string query = "DELETE FROM ERDatabase1 WHERE d1date = '" + currentDate + "'";
            SqlConnection con = new SqlConnection(sqlConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();

            //Alert to show that the data has been deleted
            Response.Write("<script>alert('Data Deleted Successfully');</script>");
        }


        //Excel Upload DB2-----------------------------------------
        protected void UploadToDB2_Click(object sender, EventArgs e)
        {
            if (ExcelFileUploadDB2.HasFile)
            {
                String d2date, d2pn, d2status;
                d2date = DateTime.Now.ToString("dd/MM/yyyy");

                string path = Path.GetFileName(ExcelFileUploadDB2.FileName);

                path = path.Replace(" ", "");
                ExcelFileUploadDB2.SaveAs(Server.MapPath("~/ExcelUpload/") + path);
                String ExcelPath = Server.MapPath("~/ExcelUpload/") + path;
                OleDbConnection mycon = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties=Excel 8.0; Persist Security Info = False");
                mycon.Open();
                OleDbCommand cmd = new OleDbCommand("select * from [Sheet1$]", mycon);
                OleDbDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    d2pn = dr[0].ToString();
                    d2status = dr[1].ToString();

                    SaveExcelDataDB2(d2date, d2pn, d2status);

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

        //saveExcelData DB2
        private void SaveExcelDataDB2(string d2date, string d2pn, string d2status)
        {
            string query = "INSERT INTO ERDatabase2 (d2date, d2pn, d2status) VALUES (@d2date, @d2pn, @d2status)";
            using (SqlConnection con = new SqlConnection(sqlConnectionString))
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@d2date", d2date);
                cmd.Parameters.AddWithValue("@d2pn", d2pn);
                cmd.Parameters.AddWithValue("@d2status", d2status);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        //Delete today's data DB2
        protected void DeleteDB2_Click(object sender, EventArgs e)
        {
            string currentDate = DateTime.Now.ToString("dd/MM/yyyy");
            string query = "DELETE FROM ERDatabase2 WHERE d2date = '" + currentDate + "'";
            SqlConnection con = new SqlConnection(sqlConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();

            //Alert to show that the data has been deleted
            Response.Write("<script>alert('Data Deleted Successfully');</script>");
        }

        protected void ViewDB2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Database2ViewPage.aspx");
        }



        // Excel Upload DB3 ------------------------------------------
        protected void UploadToDB3_Click(object sender, EventArgs e)
        {
            if (ExcelFileUploadDB3.HasFile)
            {
                string d3date = DateTime.Now.ToString("dd/MM/yyyy");
                string path = Path.GetFileName(ExcelFileUploadDB3.FileName);
                path = path.Replace(" ", "");

                ExcelFileUploadDB3.SaveAs(Server.MapPath("~/ExcelUpload/") + path);
                string excelPath = Server.MapPath("~/ExcelUpload/") + path;

                using (OleDbConnection connection = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + excelPath + "; Extended Properties=Excel 8.0; Persist Security Info=False"))
                {
                    connection.Open();
                    using (OleDbCommand command = new OleDbCommand("SELECT * FROM [Sheet1$]", connection))
                    using (OleDbDataReader dataReader = command.ExecuteReader())
                    {
                        while (dataReader.Read())
                        {
                            string d3team = dataReader[0].ToString();
                            string d3shift = dataReader[1].ToString();
                            string d3vsl = dataReader[2].ToString();
                            string d3er = dataReader[3].ToString();
                            string d3gl = dataReader[4].ToString();
                            string d3budget = dataReader[5].ToString();
                            string d3actual = dataReader[6].ToString();

                            SaveExcelDataDB3(d3date, d3team, d3shift, d3vsl, d3er, d3gl, d3budget, d3actual);
                        }
                    }

                    // Alert
                    ClientScript.RegisterStartupScript(this.GetType(), "DataSaved", "alert('Data Saved Successfully');", true);
                    connection.Close();
                }

                File.Delete(excelPath);
            }
            else
            {
                // Alert to show that no file has been selected
                ClientScript.RegisterStartupScript(this.GetType(), "NoFileSelected", "alert('Please select a file!');", true);
            }
        }

        // SaveExcelData DB3
        private void SaveExcelDataDB3(string d3date, string d3team, string d3shift, string d3vsl, string d3er, string d3gl, string d3budget, string d3actual)
        {
            string query = "INSERT INTO ERDatabase3 (d3date, d3team, d3shift, d3vsl, d3er, d3gl, d3budget, d3actual) VALUES (@d3date, @d3team, @d3shift, @d3vsl, @d3er, @d3gl, @d3budget, @d3actual)";
            using (SqlConnection connection = new SqlConnection(sqlConnectionString))
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@d3date", d3date);
                command.Parameters.AddWithValue("@d3team", d3team);
                command.Parameters.AddWithValue("@d3shift", d3shift);
                command.Parameters.AddWithValue("@d3vsl", d3vsl);
                command.Parameters.AddWithValue("@d3er", d3er);
                command.Parameters.AddWithValue("@d3gl", d3gl);
                command.Parameters.AddWithValue("@d3budget", d3budget);
                command.Parameters.AddWithValue("@d3actual", d3actual);
                connection.Open();
                command.ExecuteNonQuery();
            }
        }

        //Delete today's data DB3
        protected void DeleteDB3_Click(object sender, EventArgs e)
        {
            string currentDate = DateTime.Now.ToString("dd/MM/yyyy");
            string query = "DELETE FROM ERDatabase3 WHERE d3date = '" + currentDate + "'";
            SqlConnection con = new SqlConnection(sqlConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();

            //Alert to show that the data has been deleted
            Response.Write("<script>alert('Data Deleted Successfully');</script>");
        }

        protected void ViewDB3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Database3ViewPage.aspx");
        }
    }

}
