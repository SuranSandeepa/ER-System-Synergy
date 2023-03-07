using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace ER_System_Synergy
{
    public partial class DataEnteringPage : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(DBConnection.ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataGrid();
            }
        }

        private void DataGrid()
        {
            // Create SQL query
            string sqlQuery = "SELECT d1.d1epf, d1.d1name, d1.d1team " +
                              "FROM ERDatabase1 d1 " +
                              "INNER JOIN ERDatabase2 d2 ON d1.d1pn = d2.d2pn " +
                              "WHERE d2.d2status = 'absent' AND CONVERT(date, GETDATE()) = CONVERT(date, d2.d2date)";

            // Open database connection
            connection.Open();

            // Execute query and fill DataTable with results
            DataTable dataTable = new DataTable();
            SqlCommand command = new SqlCommand(sqlQuery, connection);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            dataAdapter.Fill(dataTable);

            // Close database connection
            connection.Close();

            // Bind DataTable to GridView control
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }
    }

}
