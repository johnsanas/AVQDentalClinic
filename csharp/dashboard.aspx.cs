using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack) {
            if (Session["username"] == null)
            {
                Response.Redirect("index.aspx");
            }
            lblUserName.Text = (string)Session["username"];
        }
    }
}