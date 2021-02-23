using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default2 : System.Web.UI.Page
{
    Admin_admission_course x = new Admin_admission_course();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admission_Course values('" + txtcourse_name.Text + "','" + txtcourse_duration.Text + "','" + txtcourse_fees.Text + "')";
        x.admin_admission_course_insert(qry);
        Response.Redirect("Admin_Admission_Course.aspx");

        txtcourse_name.Text = "";
        txtcourse_fees.Text = "";
        txtcourse_duration.Text = "";

    }
}