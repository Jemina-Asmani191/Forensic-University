using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_board_of_governor x = new Admin_board_of_governor();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Board_Of_Governor values('" + txtgovernor_name.Text + "','" + txtgovernor_designation.Text + "','" + txtgovernor_address.Text + "','" + txtgovernor_post.Text + "')";
        x.admin_board_of_governor_insert(qry);
        Response.Redirect("Admin_Board_Of_Governor.aspx");

        txtgovernor_name.Text = "";
        txtgovernor_designation.Text = "";
        txtgovernor_address.Text = "";
        txtgovernor_post.Text = "";
    }
}