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
    public partial class Database1ViewPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView();
        }

        private void GridView()
        {
            using (SqlConnection connection = new SqlConnection(DBConnection.ConnectionString))
            {
                connection.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM ERDatabase1 ORDER BY no DESC", connection);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                dgvExcelUploadDB1.DataSource = dt;
                dgvExcelUploadDB1.DataBind();
            }
        }
    }
}