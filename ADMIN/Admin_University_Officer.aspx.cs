using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_university_officer x = new Admin_university_officer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_University_Officer values('" + txtuniversity_officer_name.Text + "','" + txtuniversity_officer_designation.Text + "')";
        x.admin_university_officer_insert(qry);
        Response.Redirect("Admin_University_Officer.aspx");

        txtuniversity_officer_name.Text="";
        txtuniversity_officer_designation.Text="";
    }
}