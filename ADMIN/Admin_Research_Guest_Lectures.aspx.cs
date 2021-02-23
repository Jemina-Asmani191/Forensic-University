using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default2 : System.Web.UI.Page
{
    Admin_research_guest_lectures x = new Admin_research_guest_lectures();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Research_Guest_Lectures values('" + txtguestfacu_name.Text + "','" + txtguestfacu_desi .Text  + "','" + txtguestfacu_organi .Text  + "','" + txtguestfacu_topic .Text  +  "')";
        x.admin_research_guest_faculty_insert(qry);
        Response.Redirect("Admin_Research_Guest_Lectures.aspx");

        txtguestfacu_name.Text = "";
        txtguestfacu_desi.Text = "";
        txtguestfacu_organi.Text = "";
        txtguestfacu_topic.Text = "";
    }
}