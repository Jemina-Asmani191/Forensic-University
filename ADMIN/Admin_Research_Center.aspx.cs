using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default2 : System.Web.UI.Page
{
    Admin_research_center x = new Admin_research_center();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Research_Center values('" + txtresearch_center_name.Text + "','" + txtresearch_center_place.Text + "')";
        x.admin_research_center_insert(qry);
        Response.Redirect("Admin_Research_Center.aspx");

        txtresearch_center_name.Text = "";
        txtresearch_center_place.Text = "";


    }
}