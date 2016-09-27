using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using System.Data;
using MySql.Data.MySqlClient;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {  
        if (Request.QueryString["logout"] == "true")
        {
            Session.Abandon();
            Response.Redirect("index.aspx");
        }
    }

    public void Click(object sender, EventArgs e)
    {
        string username = txtUserName.Text;
        string password = txtPassword.Text;

        //experiment
        using (MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString)) {
            con.Open();
            string query = "SELECT * FROM sample WHERE username='" + username + "' AND password='" + password + "'";
            MySqlCommand q_command = new MySqlCommand(query, con);
            MySqlDataReader reader = q_command.ExecuteReader();

            if (reader.HasRows)
            {
                lblAlert.Visible = false;
                reader.Read();
                Session["username"] = reader.GetString(1) + " " + reader.GetString(2);
                Response.Redirect("admin.aspx");
            }
            else
            {
                lblAlert.Visible = true;
            }
        }       
    }
}