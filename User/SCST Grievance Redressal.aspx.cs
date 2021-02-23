using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default2 : System.Web.UI.Page
{
    Admin_SCST_grievance_redressal x = new Admin_SCST_grievance_redressal();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_SCST_Grievance_Redressal values('" + txt_name.Text + "','" + txt_email.Text + "','" + txt_complain.Text +"')";
        x.admin_SCST_grievance_redressal_insert(qry);
        Response.Redirect("SCST Grievance Redressal.aspx");

        txt_name.Text = "";
        txt_email.Text = "";
        txt_complain.Text = "";
    }
}