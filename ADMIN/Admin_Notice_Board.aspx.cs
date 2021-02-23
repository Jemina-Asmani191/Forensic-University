using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_notice_board x = new Admin_notice_board();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Notice_Board values('" + txtnotice_name.Text + "','" + txtnotice_desc.Text + "')";
        x.admin_notice_board_insert(qry);
        Response.Redirect("Admin_Notice_Board.aspx");

        txtnotice_name.Text = "";
        txtnotice_desc.Text = "";


    }
}