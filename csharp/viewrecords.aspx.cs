using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class viewrecords : System.Web.UI.Page
{
    int patient_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack){
            if(Session["username"]==null) {
                Response.Redirect("index.aspx");
            }
            else {
                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("admin.aspx");
                }
                else {
                    patient_id = Convert.ToInt32(Request.QueryString["id"]);

                    using(MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString)) {
                        con.Open();
                        MySqlCommand com = new MySqlCommand("select * from patient where id=" + patient_id,con);
                        MySqlDataReader reader = com.ExecuteReader();
                        reader.Read();
                        lblPatient_Name.Text = "View record | " + reader.GetString(3) + ", " + reader.GetString(1);   
                    }

                    //lblPatient_Name.Text = "Patient_Codebehind";
                    PopulateGridView(gvRecords);
                    //Label1.Text = "gumana";
                }   
            }
        }
    }

    protected DataSet BindData(string str) {
        DataSet ds = new DataSet();
        using (MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString)) {
            con.Open();
            MySqlCommand com = new MySqlCommand(str, con);
            MySqlDataAdapter da = new MySqlDataAdapter(com);
            da.Fill(ds);
        }
        return ds;
    }

    protected void PopulateGridView(GridView gv) {
        string query = "select services.name,dental_records.staff_id,dental_records.title,dental_records.description,dental_records.date_time from dental_records inner join services where dental_records.service_id=services.id and dental_records.patient_id=" + patient_id;
        DataSet ds = new DataSet();
        ds = BindData(query);
        gv.DataSource = ds.Tables[0];
        gv.DataBind();
    }
}