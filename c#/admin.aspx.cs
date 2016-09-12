using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using System.Data;
using MySql.Data.MySqlClient;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(!IsPostBack) {
            if (Session["username"] == null)
            {
                Response.Redirect("index.aspx");
            }

            btnLogout.Text = "(" + (string)Session["username"] + ") Logout";

            PopulateGridView(gvPatient);
        }
    }

    protected void Click_btnLogout(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("index.aspx");
    }

    protected DataSet BindData(string str) {
        DataSet ds = new DataSet();

        MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString);
        con.Open();
        MySqlCommand com = new MySqlCommand(str, con);
        MySqlDataAdapter da = new MySqlDataAdapter(com);
        da.Fill(ds);
        return ds;
    }

    protected void PopulateGridView(GridView gv) {
        string query = "select * from patient";
        DataSet ds = new DataSet();
        ds = BindData(query);
        gv.DataSource = ds.Tables[0];
        gv.DataBind();
    }

    protected void Click_AddPatient(object sender, EventArgs e) {
        Response.Redirect("admin_addpatient.aspx");
    }

    protected void gvPatient_RowEditing(object sender,GridViewEditEventArgs e) {
        GridView gvPatient = sender as GridView;
        gvPatient.EditIndex = e.NewEditIndex;

        //TextBox e_txtBirthday1 = gvPatient.Rows[gvPatient.EditIndex].FindControl("e_txtBirthday") as TextBox;
        //string ssssample = e_txtBirthday1.Text;
        PopulateGridView(gvPatient);
    }

    protected void gvPatient_RowCancellingEdit(object sender, GridViewCancelEditEventArgs e) {
        GridView gvPatient = sender as GridView;

        gvPatient.EditIndex = -1;
        PopulateGridView(gvPatient);
    }

    protected void gvPatient_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        GridViewRow row = e.Row as GridViewRow;

        DataSet ds = new DataSet();
        ds = BindData("select * from patient");
        //row.Cells[4].Text = lblBirthday.Text.ToString();
        //row.Cells[4].Text = row.RowIndex.ToString();
        //e.Row.Cells[1].Text = "hello";

        if (row.RowType == DataControlRowType.DataRow)
        {   
            if((row.RowState & DataControlRowState.Edit) > 0) {
                
            }

            //COMMENT working to pero pag nagedit ka na di na sya gagana..
            //Label lblBirthday = e.Row.FindControl("lblBirthday") as Label;
            //string holder = lblBirthday.Text.ToString();
            //string holder1 = Convert.ToDateTime(holder).ToString("yyyy-MM-dd");
            //lblBirthday.Text = holder1;
            //COMMENT end of working to
            //TextBox e_txtBirthday = e.Row.FindControl("e_txtBirthday") as TextBox;

            //if((row.RowState & DataControlRowState.Edit) >0) {
            //    Label lblBirthday = row.FindControl("lblBirthday") as Label;
            //    row.Cells[4].Text = lblBirthday.Text.ToString();
            //}

            //TableCell statusCell = e.Row.Cells[5];
            //TableCell statusCell1 = e.Row.Cells[7];
            //statusCell.Text = "XX";
            //string formatted_birthday = Convert.ToDateTime(statusCell.Text).ToString("MM-dd-yy");

            //statusCell.Text = statusCell1.Text.ToString();

            //working code
            //TableCell statusCell = e.Row.Cells[5];
            //end of working code

            //Label statusCell = gvPatient.Rows[e.Row.Cells[2].FindControl("lblBirthday") as Label;

            //working
            //string birthday_formatted = ds.Tables[0].Rows[row.RowIndex]["birthday"].ToString();
            //end of working

            //statusCell.Text = ds.Tables[0].Rows[row.RowIndex]["birthday"].ToString();

            //working
            //statusCell.Text = birthday_formatted;
            //statusCell.Text = Convert.ToDateTime(birthday_formatted).ToString("MM-dd-yyyy");

            //end of working

            //experiment
            //gvPatient.Row[row.rowIndex].FindControl("").Text = "hello";
            //end of experiment

            //TextBox birthdaysample = gvPatient.Rows[row.RowIndex].FindControl("birthday") as TextBox;
            //data set tas data table then data row

            //lblBirthday.Text = e.Row.RowIndex.ToString(); ==>views the current index of the gridview


        }
    }

    protected void SampleDataBound(object sender, GridViewRowEventArgs e) {
        btnAddPatient.Text = e.Row.RowIndex.ToString();
        e.Row.RowIndex.ToString();
    }

    protected void gvPatient_RowUpdating(object sender, GridViewUpdateEventArgs e) {
        GridView gv = sender as GridView;

        TextBox e_txtFirstName = gv.Rows[e.RowIndex].FindControl("e_txtFirstName") as TextBox;
        TextBox e_txtMiddleName = gv.Rows[e.RowIndex].FindControl("e_txtMiddleName") as TextBox;
        TextBox e_txtLastName = gv.Rows[e.RowIndex].FindControl("e_txtLastName") as TextBox;
        TextBox e_txtAddress = gv.Rows[e.RowIndex].FindControl("e_txtAddress") as TextBox;
        TextBox e_txtContactNo = gv.Rows[e.RowIndex].FindControl("e_txtContactNo") as TextBox;
        //TextBox e_txtBirthday = gv.Rows[e.RowIndex].FindControl("e_txtBirthday") as TextBox;
        TextBox e_txtStatus = gv.Rows[e.RowIndex].FindControl("e_txtStatus") as TextBox;
        TextBox e_Occupation = gv.Rows[e.RowIndex].FindControl("e_txtOccupation") as TextBox;

        Label e_PatientID = gv.Rows[e.RowIndex].FindControl("e_lblPatientID") as Label;

        int id = Convert.ToInt32(e_PatientID.Text.ToString());
        string first_name = e_txtFirstName.Text.ToString();
        string middle_name = e_txtMiddleName.Text.ToString();
        string last_name = e_txtLastName.Text.ToString();
        string address = e_txtAddress.Text.ToString();
        string contact_number = e_txtContactNo.Text.ToString();
        //string birthday = e_txtBirthday.Text.ToString();
        string status = e_txtStatus.Text.ToString();
        string occupation = e_Occupation.Text.ToString();

        //string query = "update patient set first_name=@first_name,middle_name=@middle_name,last_name=@last_name,address=@address,contact_number=@contact_number,birthday=@birthday,status=@status,occupation=@occupation where id=@id";
        //string query = "update patient set first_name='"+first_name+"',middle_name='"+middle_name+"',last_name='"+last_name+"',address='"+address+"',contact_number='"+contact_number+"',birthday='"+birthday+"',status='"+status+"',occupation='"+occupation+ "' where id='"+id+"'";
        string query = "update patient set first_name='" + first_name + "',middle_name='" + middle_name + "',last_name='" + last_name + "',address='" + address + "',contact_number='" + contact_number + "',status='" + status + "',occupation='" + occupation + "' where id='" + id + "'";
        QuerySender(query);
    }

    protected void QuerySender(string qry) {
        //MySqlConnection con = new MySqlConnection("Database=avq;Data Source=localhost; User Id=root;Password=");
        MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString);
        con.Open();
        MySqlCommand com = new MySqlCommand(qry, con);
        com.ExecuteNonQuery();
    }

}

//to read value from session variable: kelangan muna magcast Label1.Text = (string)Session["username"]