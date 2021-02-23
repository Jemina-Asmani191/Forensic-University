using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_behavioral_infrastructural_facilities x = new Admin_behavioral_infrastructural_facilities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Behavioral_Infrastructural_facilities values('" + txtlaboratory_instruments.Text + "','" + txtpurpose_parameter.Text + "')";
        x.admin_behavioral_infrastructural_facilities_insert(qry);
        Response.Redirect("Admin_Behavioral_Infrastructural_facilities.aspx");

        txtlaboratory_instruments.Text = "";
        txtpurpose_parameter.Text = "";


    }
}