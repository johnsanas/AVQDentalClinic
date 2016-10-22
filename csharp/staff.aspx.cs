using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class staff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack) {
            if(Session["username"]==null) {
                Response.Redirect("index.aspx");
            }
            PopulateGridView(gvStaff);
        }
        
    }

    protected DataSet BindData(string str) {
        DataSet ds = new DataSet();
        using (MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString))
        {
            con.Open();
            MySqlCommand com = new MySqlCommand(str, con);
            MySqlDataAdapter da = new MySqlDataAdapter(com);
            da.Fill(ds);
        }
        return ds;
    }

    protected void PopulateGridView(GridView gv) {
        string query = "select id,first_name,middle_name,last_name,position from users";
        DataSet ds = new DataSet();
        ds = BindData(query);
        gv.DataSource = ds.Tables[0];
        gv.DataBind();
    }

    protected void gvStaff_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView gvStaff = sender as GridView;
        gvStaff.EditIndex = e.NewEditIndex;

        PopulateGridView(gvStaff);
    }

    protected void QuerySender(string qry) {
        using (MySqlConnection con = new MySqlConnection(Resources_Text.ConnectionString)) {
            con.Open();
            MySqlCommand com = new MySqlCommand(qry, con);
            com.ExecuteNonQuery();
        }
    }

    protected void gvStaff_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView gv = sender as GridView;
        gv.EditIndex = -1;
        PopulateGridView(gv);
    }

    protected void gvStaff_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridView gv = sender as GridView;

        TextBox e_txtFirstName = gv.Rows[e.RowIndex].FindControl("e_txtFirstName") as TextBox;
        TextBox e_txtMiddleName = gv.Rows[e.RowIndex].FindControl("e_txtMiddleName") as TextBox;
        TextBox e_txtLastName = gv.Rows[e.RowIndex].FindControl("e_txtLastName") as TextBox;
        TextBox e_txtAddress = gv.Rows[e.RowIndex].FindControl("e_txtAddress") as TextBox;
        TextBox e_txtPosition = gv.Rows[e.RowIndex].FindControl("e_txtPosition") as TextBox;

        HiddenField e_hdnStaffID = gv.Rows[e.RowIndex].FindControl("e_hdnStaffID") as HiddenField;
        int id = Convert.ToInt32(e_hdnStaffID.Value.ToString());
        string first_name = e_txtFirstName.Text.ToString();
        string middle_name = e_txtMiddleName.Text.ToString();
        string last_name = e_txtLastName.Text.ToString();
        string position = e_txtPosition.Text.ToString();

        string query = "update users set first_name='"+ first_name+ "',middle_name='"+ middle_name +"',last_name='"+last_name+"',position='"+position+"' where id=" + id;
        QuerySender(query);

        gv.EditIndex = -1;
        PopulateGridView(gvStaff);
    }

    protected void modal_btnAddStaff_Click(object sender, EventArgs e)
    {
        string last_name, first_name, middle_name, position, username, password;
        last_name = add_txtLastName.Text.ToString();
        first_name = add_txtFirstName.Text.ToString();
        middle_name = add_txtMiddleName.Text.ToString();
        position = add_txtPosition.Text.ToString();
        username = add_txtUserName.Text.ToString();
        password = add_txtPassword.Text.ToString();

        string query = "insert into users(last_name,first_name,middle_name,position,username,password) values('"+ last_name +"','"+ first_name +"','"+ middle_name +"','"+ position + "','"+ username +"','"+ password +"')";
        Resources_Text.QuerySender(query);
        Response.Redirect("admin.aspx");
    }
}