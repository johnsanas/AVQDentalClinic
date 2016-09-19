using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Resources_Text
/// </summary>
public class Resources_Text
{
    public static string ConnectionString = "Database=avq;Data Source=localhost; User Id=root;Password=";

    public static void QuerySender(string qry)
    {
        //MySqlConnection con = new MySqlConnection("Database=avq;Data Source=localhost; User Id=root;Password=");
        using (MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString))
        {
            con.Open();
            MySqlCommand com = new MySqlCommand(qry, con);
            com.ExecuteNonQuery();
        }
        //MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString);
        //con.Open();
        //MySqlCommand com = new MySqlCommand(qry, con);
        //com.ExecuteNonQuery();
    }
    //
    // TODO: Add constructor logic here
    //
}