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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("index.aspx");
            }

            hdnID.Value = Request.QueryString["id"];

            DataSet ds = new DataSet();
            String qry = "select id,name from services";
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
        String user_id = hdnID.Value.ToString();
        String service_id = ddlServices.SelectedValue.ToString();
        String description = txtDescription.Text.ToString();
        String query = "insert into dental_records(patient_id,service_id,description,date_time,staff_id) values('" + user_id+ "','"+ service_id +"','"+ description +"',now(),'"+ Session["username"] +"')";

        Resources_Text.QuerySender(query);

        query = "select * from services where id='"+ service_id +"'";


        Response.Redirect("admin.aspx");
    }
}