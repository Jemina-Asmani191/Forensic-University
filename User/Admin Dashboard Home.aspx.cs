using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["firstname"].ToString();
    }
    protected void btn_dashboard_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admission Dashboard.aspx");
    }
    protected void btn_courses_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admission Dashboard Courses.aspx");
    }
}