﻿using System;
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

        //saveExcelData DB1
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
        private void SaveExcelDataDB2(String d2date, String d2pn, String d2status)
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



        //Excel Upload DB3------------------------------------------
        protected void UploadToDB3_Click(object sender, EventArgs e)
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

                    SaveExcelDataDB3(d2date, d2pn, d2status);

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
        private void SaveExcelDataDB3(String d2date, String d2pn, String d2status)
        {
            string query = "INSERT INTO ERDatabase3 (d2date, d2pn, d2status) VALUES (@d2date, @d2pn, @d2status)";
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
        protected void DeleteDB3_Click(object sender, EventArgs e)
        {
            string currentDate = DateTime.Now.ToString("dd/MM/yyyy");
            string query = "DELETE FROM ERDatabase3 WHERE d2date = '" + currentDate + "'";
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
