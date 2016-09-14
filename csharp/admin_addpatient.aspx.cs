using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_addpatient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["username"]==null) {
            Response.Redirect("index.aspx");
        }
    }

    public void AddPatient(object sender, EventArgs e) {
        string first_name = txtFirstName.Text;
        string middle_name = txtMiddleName.Text;
        string last_name = txtLastName.Text;
        string address = txtAddress.Text;
        string contact_number = txtContactNo.Text;
        string birthday = txtBirthday.Text;
        string status = txtStatus.Text;
        string occupation = txtOccupation.Text;

        bool complete_form = true;

        if(first_name=="") {
            WarningLabel(lblFirstName, "First Name");
            complete_form = false;
        }

        if(last_name=="") {
            WarningLabel(lblLastName, "Last Name");
            complete_form = false;
        }

        if(middle_name =="") {
            WarningLabel(lblMiddleName, "Middle Name");
            complete_form = false;
        }

        if(address=="") {
            WarningLabel(lblAddress, "Address");
            complete_form = false;
        }

        if(contact_number=="") {
            WarningLabel(lblContactNo, "Contact Number");
            complete_form = false;
        }

        if(birthday=="") {
            WarningLabel(lblBirthday, "Birthday");
            complete_form = false;
        }

        if(status=="") {
            WarningLabel(lblStatus, "Status");
            complete_form = false;
        }

        if(occupation=="") {
            WarningLabel(lblOccupation,"Occupation");
            complete_form = false;
        }

        if (complete_form==true) {
            //string qry = "insert into patient (first_name,middle_name,last_name,address,contact_number,birthday,status,occupation) values('" + first_name + "','" + middle_name + "','" + last_name + "','" + address + "','" + contact_number + "','" + birthday + "','" + status + "','" + occupation + "')";

            string qry = "insert into patient (first_name,middle_name,last_name,address,contact_number,status,occupation) values('" + first_name + "','" + middle_name + "','" + last_name + "','" + address + "','" + contact_number + "','" + birthday + "','" + status + "','" + occupation + "')";

            MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString);
            con.Open();
            MySqlCommand q_command = new MySqlCommand(qry, con);
            q_command.ExecuteNonQuery();

            Response.Redirect("admin.aspx");
        }

        
    }
    public void WarningLabel(Label label, string label_name)
    {
        label.Text = label_name + " (Please fill out this field)";
        label.ForeColor = System.Drawing.Color.Red;
    }
}