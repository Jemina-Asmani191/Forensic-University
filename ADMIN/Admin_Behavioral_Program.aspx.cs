using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_behavioral_program x = new Admin_behavioral_program();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Behavioral_Program values('" + txtbehavioral_coursename.Text + "','" + txtbehavioral_criteria.Text + "','" + txtbehavioral_duration.Text + "','" + txtbehavioral_seats.Text + "','" + txtbehavioral_coursefee.Text + "')";
        x.admin_behavioral_program_insert(qry);
        Response.Redirect("Admin_Behavioral_Program.aspx");

        txtbehavioral_coursefee.Text = "";
        txtbehavioral_coursename.Text = "";
        txtbehavioral_criteria.Text = "";
        txtbehavioral_duration.Text = "";
        txtbehavioral_seats.Text = "";

    }
}