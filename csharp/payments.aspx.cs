using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class payments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack) {
            if(Session["username"]==null) {
                Response.Redirect("index.aspx");
            }

            DataSet ds = new DataSet();
            ds = BindData("select concat(last_name,', ',first_name,' ',middle_name) as name,id from patient where balance !=0 order by name");
            ddlPatient.DataTextField = "name";
            ddlPatient.DataValueField = "id";
            ddlPatient.DataSource = ds.Tables[0];
            ddlPatient.DataBind();
            {
                string first_item = ddlPatient.Items[0].Value.ToString();
                string query = "select dental_records.id,concat(services.name,' (',dental_records.date_time,')') as name,dental_records.balance from services inner join dental_records where services.id=dental_records.service_id and balance!=0 and dental_records.patient_id=" + first_item;
                ds = BindData(query);
                ddlPaymentFor.DataTextField = "name";
                ddlPaymentFor.DataValueField = "id";
                ddlPaymentFor.DataSource = ds.Tables[0];
                ddlPaymentFor.DataBind();

            }
            txtPayment.Text = "0";
            PopulateGridView(gvPayments);
        }
        lblUserName.Text = (string)Session["username"];
    }

    protected DataSet BindData(string str)
    {
        DataSet ds = new DataSet();
        using (MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString))
        {
            con.Open();
            MySqlCommand com = new MySqlCommand(str, con);
            MySqlDataAdapter da = new MySqlDataAdapter(com);
            da.Fill(ds);
        }
        //MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString);
        //con.Open();
        //MySqlCommand com = new MySqlCommand(str, con);
        //MySqlDataAdapter da = new MySqlDataAdapter(com);
        //da.Fill(ds);
        return ds;
    }

    protected void PopulateGridView(GridView gv)
    {
        string query = "select concat(patient.last_name,', ',patient.first_name,' ',patient.middle_name) as name, payments.paid, concat(services.name,' (',dental_records.date_time,')') as payment_for, payments.user_id, payments.date_time from payments inner join patient inner join dental_records inner join services where patient.id=payments.patient_id and dental_records.id=payments.payment_for and dental_records.service_id=services.id";
        DataSet ds = new DataSet();
        ds = BindData(query);
        gv.DataSource = ds.Tables[0];
        gv.DataBind();
    }

    protected void ddlPatient_SelectedIndexChanged(object sender, EventArgs e)
    {
        string query = "select dental_records.id,concat(services.name,' (',dental_records.date_time,')') as name,dental_records.balance from services inner join dental_records where services.id=dental_records.service_id and balance!=0 and dental_records.patient_id=" + ddlPatient.SelectedValue.ToString();
        DataSet ds = new DataSet();
        ds = BindData(query);
        ddlPaymentFor.DataTextField = "name";
        ddlPaymentFor.DataValueField = "id";
        ddlPaymentFor.DataSource = ds.Tables[0];
        ddlPaymentFor.DataBind();
    }

    protected void btnAddPayment_Click(object sender, EventArgs e)
    {
        string patient_id = ddlPatient.SelectedValue.ToString();
        string payment = txtPayment.Text.ToString();
        string dental_record_id = ddlPaymentFor.SelectedValue.ToString();
        double old_balance = 0, new_balance = 0;

        if(Convert.ToInt32(payment) == 0) {
            Response.Redirect("dashboard.aspx");
        }
        else {
            string query = "insert into payments(patient_id,paid,payment_for,user_id,date_time) values(" + patient_id + "," + payment + "," + Convert.ToInt32(dental_record_id) + ",0,now())";
            Resources_Text.QuerySender(query);

            using (MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString))
            {
                con.Open();
                MySqlCommand command = new MySqlCommand("select balance from dental_records where id=" + dental_record_id, con);
                MySqlDataReader reader = command.ExecuteReader();

                reader.Read();
                old_balance = Convert.ToDouble(reader.GetString(0));
                reader.Close();

                new_balance = old_balance - Convert.ToDouble(payment);
                query = "update dental_records set balance=" + new_balance + " where id=" + dental_record_id;
                Resources_Text.QuerySender(query);

                command.CommandText = "select balance from patient where id=" + patient_id;
                reader = command.ExecuteReader();
                reader.Read();
                old_balance = Convert.ToDouble(reader.GetString(0));
                reader.Close();

                new_balance = old_balance - Convert.ToDouble(payment);
                query = "update patient set balance=" + new_balance + " where id=" + patient_id;
                Resources_Text.QuerySender(query);
                con.Close();
            }
            Response.Redirect("admin.aspx");
        }
    }
}