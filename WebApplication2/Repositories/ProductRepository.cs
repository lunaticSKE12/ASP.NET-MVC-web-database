using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace WebApplication2.Repositories
{
    public class ProductRepository
    {
        public DataSet getProducts()
        {
            // connection server
            string connectionString = WebConfigurationManager.ConnectionStrings
                ["myconnectionString"].ConnectionString;
            // create object connection
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            // create object dataset
            DataSet dataset = new DataSet();
            // command
            string command = "SELECT * FROM [products]";
            // create object sql command
            SqlCommand sqlCommand = new SqlCommand(command, sqlConnection);
            // create adapter
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
            sqlDataAdapter.Fill(dataset);

            return dataset;
        }
    }
}