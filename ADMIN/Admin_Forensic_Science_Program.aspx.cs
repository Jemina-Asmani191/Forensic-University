using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_forensic_science_programs x = new Admin_forensic_science_programs();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Forensic_Program values('" + txtfore_coursename.Text + "','" + txtfore_criteria.Text + "','" + txtfore_duration.Text + "','" + txtfore_seats.Text + "','" + txtfore_coursefee.Text + "')"; 
        x.admin_science_programs_insert(qry);
        Response.Redirect("Admin_Forensic_Science_Program.aspx");

        txtfore_coursename.Text = "";
        txtfore_criteria.Text = "";
        txtfore_duration.Text = "";
        txtfore_seats.Text = "";
        txtfore_coursefee.Text = "";
    }
}