using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{

    Admin_contactus x = new Admin_contactus();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_ContactUs values('" + txtcontact_department.Text + "','" + txtcontact_number.Text + "','" + txtemail.Text + "','" + txtdept_desc.Text + "')";
        x.admin_contactus_insert(qry);

        Response.Redirect("Admin_ContactUs.aspx");
        txtcontact_department.Text = "";
        txtcontact_number.Text = "";
        txtdept_desc.Text = "";
        txtemail.Text = "";
    }
}