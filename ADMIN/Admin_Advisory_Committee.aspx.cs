using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_Advisory_Committee x = new Admin_Advisory_Committee();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Advisory_Committee values('" + txtadvisory_name.Text + "','" + txtadvisory_designation.Text + "','" + txtpost .Text + "')";
        x.admin_advisory_committee_insert(qry);
        Response.Redirect("Admin_Advisory_Committee.aspx");

        txtadvisory_name.Text = "";
        txtadvisory_designation.Text = "";
    }
}