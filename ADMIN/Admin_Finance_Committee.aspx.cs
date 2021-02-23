using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_finance_committee x = new Admin_finance_committee();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Finance_Committee values('" + txtfinance_committee_name.Text + "','" + txtfinance_committee_address.Text + "','" + txtcommittee_post .Text + "')";
        x.admin_finace_committee_insert(qry);
        Response.Redirect("Admin_Finance_Committee.aspx");



        txtfinance_committee_name.Text = "";
        txtfinance_committee_address.Text = "";
        txtcommittee_post.Text = "";
    }
}