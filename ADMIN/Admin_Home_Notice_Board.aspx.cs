using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default2 : System.Web.UI.Page
{
    Admin_home_notice_board x = new Admin_home_notice_board();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Home_Notice_Board values('" + txthome_notice_desc.Text + "','" + txthome_notice_href.Text + "')";
        x.admin_home_notice_board_insert(qry);
        Response.Redirect("Admin_Home_Notice_Board.aspx");

        txthome_notice_desc.Text = "";
        txthome_notice_href.Text = "";


    }
}