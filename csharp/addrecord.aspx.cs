using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addrecord : System.Web.UI.Page
{
    public int patient_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("index.aspx");
            }

            patient_id = Convert.ToInt32(Request.QueryString["id"]);

            using (MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString))
            {
                con.Open();
                MySqlCommand com = new MySqlCommand("select * from patient where id=" + patient_id, con);
                MySqlDataReader reader = com.ExecuteReader();
                reader.Read();
                lblPatientName.Text = "Add record | " + reader.GetString(3) + ", " + reader.GetString(1);
            }

            hdnID.Value = patient_id.ToString();
            DataSet ds = new DataSet();
            String qry = "select id,name,price from services";
            ds = BindDropDown(qry);
            ddlServices.DataTextField = "name";
            ddlServices.DataValueField = "id";
            ddlServices.DataSource = ds.Tables[0];
            ddlServices.DataBind();
        }
    }

    protected DataSet BindDropDown(String qry) {
        DataSet ds = new DataSet();

        using (MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString)) {
            con.Open();

            MySqlCommand cmd = new MySqlCommand(qry, con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(ds);
        }
        return ds;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        double balance = 0, service_price = 0, new_balance = 0;

        String user_id = hdnID.Value.ToString();

        using (MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString))
        {
            con.Open();
            MySqlCommand com = new MySqlCommand("select balance from patient where id=" + hdnID.Value.ToString(), con);
            MySqlDataReader reader1 = com.ExecuteReader();

            reader1.Read();
            balance = Convert.ToDouble(reader1.GetString(0));
            //new_balance = balance + service_price;
            reader1.Close();

            com.CommandText = "select price from services where id=" + ddlServices.SelectedValue.ToString();
            reader1 = com.ExecuteReader();
            reader1.Read();
            service_price = Convert.ToDouble(reader1.GetString(0));
            new_balance = balance + service_price;
        }

        String service_id = ddlServices.SelectedValue.ToString();
        String description = txtDescription.Text.ToString();
        String query = "insert into dental_records(patient_id,service_id,description,date_time,staff_id,balance) values('" + user_id+ "','"+ service_id +"','"+ description +"',now(),'"+ Session["username"] +"','"+ service_price +"')";
        Resources_Text.QuerySender(query);
        
        query = "update patient set balance=" + new_balance + " where id=" + hdnID.Value.ToString();
        Resources_Text.QuerySender(query);
        
        Response.Redirect("admin.aspx"); 
    }
}