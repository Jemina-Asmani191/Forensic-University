using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_research_Program x = new Admin_research_Program();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Research_Program values('" + txtresearch_coursename.Text + "','" + txtresearch_criteria.Text + "','" + txtresearch_duration.Text + "','" + txtresearch_seats.Text + "','" + txtresearch_coursefee.Text + "')";
        x.admin_research_program_insert(qry);
        Response.Redirect("Admin_Research_Program.aspx");

        txtresearch_coursename.Text = "";
        txtresearch_criteria.Text = "";
        txtresearch_duration.Text = "";
        txtresearch_seats.Text = "";
        txtresearch_coursefee.Text = "";

    }
}