using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_academic_council x = new Admin_academic_council();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btn_Submit_Click1(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Academic_Council values('" + txtacademic_council_name.Text + "','" + txtacademic_council_designation.Text + "','" + txtpost.Text + "')";
        x.admin_academic_council_insert(qry);
        Response.Redirect("Admin_Academic_Council.aspx");

        txtacademic_council_name.Text = "";
        txtacademic_council_designation.Text = "";
        txtpost.Text = "";
    }
}