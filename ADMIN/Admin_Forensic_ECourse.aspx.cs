using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_Forensic_ECourse x = new Admin_Forensic_ECourse();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Forensic_ECourse values('" + txtecourse_name.Text + "','" + txtecourse_duration.Text + "','" + txtecourse_eligibilty_criteria.Text + "','" + txtecourse_seats.Text + "','" + txtecourse_fees.Text + "')";
        x.admin_forensic_ECourse_insert(qry);
        Response.Redirect("Admin_Forensic_ECourse.aspx");


        txtecourse_name.Text = "";
        txtecourse_duration.Text = "";
        txtecourse_eligibilty_criteria.Text = "";
        txtecourse_seats.Text = "";
        txtecourse_fees.Text = "";

    }
}