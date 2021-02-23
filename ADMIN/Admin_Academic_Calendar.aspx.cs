using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_academic_calendar x = new Admin_academic_calendar();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Academic_Calendar values('" + txtacedate .Text  + "','" + txtacademic_desc.Text + "')";
        x.admin_academic_insert(qry);
        Response.Redirect("Admin_Academic_Calendar.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}