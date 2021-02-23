using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_administrative_staff x = new Admin_administrative_staff();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Administrative_Staff values('" + txtadministrative_staff_name.Text + "','" + txtadministrative_staff_designation.Text + "')";
        x.admin_administrative_staff_insert(qry);
        Response.Redirect("Admin_Administrative_Staff.aspx");

        txtadministrative_staff_name.Text = "";
        txtadministrative_staff_designation.Text = "";
    }
}