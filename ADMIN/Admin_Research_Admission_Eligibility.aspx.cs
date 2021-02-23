using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default2 : System.Web.UI.Page
{
    Admin_research_admission_eligibility x = new Admin_research_admission_eligibility();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Research_Admission_Eligibility values('" + txtcourse_name .Text  + "','" + txtcourse_duration .Text  + "','" + txtcourse_criteria .Text + "','" + txtcourse_seats .Text + "','" + txtcourse_fees .Text + "')";
        x.admin_research_admission_eligibility_insert(qry);
        Response.Redirect("Admin_Research_Admission_Eligibility.aspx");

        txtcourse_name.Text = "";
        txtcourse_duration.Text = "";
        txtcourse_criteria.Text = "";
        txtcourse_seats.Text = "";
        txtcourse_fees.Text = "";
    }
}