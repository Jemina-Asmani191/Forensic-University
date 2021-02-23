using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_behavioral_guest_faculty x = new Admin_behavioral_guest_faculty();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Behavioral_Guest_Faculty values('" + txtguestfacu_name.Text + "','" + txtguestfacu_desi.Text + "','" + txtguestfacu_organi.Text + "','" + txtguestfacu_topic.Text + "')";
        x.admin_behavioral_guest_faculty_insert(qry);
        Response.Redirect("Admin_Behavioral_Guest_Faculty.aspx");

        txtguestfacu_desi.Text = "";
        txtguestfacu_name.Text = "";
        txtguestfacu_organi.Text = "";
        txtguestfacu_topic.Text = "";

    }
}