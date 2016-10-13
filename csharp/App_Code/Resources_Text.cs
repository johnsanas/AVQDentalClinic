using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Resources_Text
/// </summary>test
public class Resources_Text
{

    public static string ConnectionString = "Database=avq;Data Source=localhost; User Id=root;Password=";

    public static void QuerySender(string qry)
    {
        using (MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString))
        {
            con.Open();
            MySqlCommand com = new MySqlCommand(qry, con);
            com.ExecuteNonQuery();
            con.Close();
        }
    }
    //
    // TODO: Add constructor logic here
    //
}
