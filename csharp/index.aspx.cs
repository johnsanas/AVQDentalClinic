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
        
    }

    public void Click(object sender, EventArgs e)
    {
        string username = txtUserName.Text;
        string password = txtPassword.Text;

<<<<<<< HEAD
        //experiment
        MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString);

        con.Open();
        string query = "SELECT * FROM sample WHERE username='" + username + "' AND password='" + password + "'";
        MySqlCommand q_command = new MySqlCommand(query, con);
        MySqlDataReader reader = q_command.ExecuteReader();

        //reader.Read();
        //reader.GetString(0);
        //reader.Close();

        if (reader.HasRows)
        {
            lblAlert.Visible = false;
            reader.Read();
            Session["username"] = reader.GetString(1) + " " + reader.GetString(2);
            Response.Redirect("about.aspx");
        }
        else
        {
            //txtLabel.Text = "Username or Password Incorrect";
            //txtUserName.Text = "";
            lblAlert.Visible = true;


            //try
            using (MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString))
=======
        //try
        using (MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString)) {
            con.Open();
            string query = "select * from sample where username='" + username + "' and password='" + password + "'";
            MySqlCommand q_command = new MySqlCommand(query, con);
            MySqlDataReader reader = q_command.ExecuteReader();

            if (reader.HasRows)
            {
                reader.Read();
                //Session["username"] = reader.GetString(1) + " " + reader.GetString(2);
                Session["username"] = reader.GetString(0);
                Response.Redirect("admin.aspx");
                lblAlert.Visible = false;
            }
            else
>>>>>>> 500fa487d91e28c3a2431f151425a89208c4b1d7
            {
                con.Open();
                string query = "select * from sample where username='" + username + "' and password='" + password + "'";
                MySqlCommand q_command = new MySqlCommand(query, con);
                MySqlDataReader reader = q_command.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Read();
                    Session["username"] = reader.GetString(1) + " " + reader.GetString(2);
                    Response.Redirect("admin.aspx");
                    lblAlert.Visible = false;
                }
                else
                {
                    //txtLabel.Text = "Username or Password Incorrect";
                    //txtUserName.Text = "";
                    lblAlert.Visible = true;
                }

            }
            //end try

            //MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString);

            //con.Open();
            //string query = "select * from sample where username='" + username + "' and password='" + password + "'";
            //MySqlCommand q_command = new MySqlCommand(query, con);
            //MySqlDataReader reader = q_command.ExecuteReader();

            ////reader.Read();
            ////reader.GetString(0);
            ////reader.Close();

            //if (reader.HasRows)
            //{
            //    reader.Read();
            //    Session["username"] = reader.GetString(1) + " " + reader.GetString(2);
            //    Response.Redirect("admin.aspx");
            //    lblAlert.Visible = false;
            //}
            //else
            //{
            //    //txtLabel.Text = "Username or Password Incorrect";
            //    //txtUserName.Text = "";
            //    lblAlert.Visible = true;
            //}


            //DO NOT REMOVE THIS COMMENTSSSS!!! --PELP
            //to execute a command: q_command.ExecuteNonQuery();
            //end

            //Session["username"] = "example";
            //txtLabel.Text = txtPassword.Text;
            //Response.Redirect("admin.aspx");

            //Server.Transfer("admin.aspx", false);
        }
    }
}