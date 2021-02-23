using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Admin_master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
          Image1.ImageUrl = "~/ADMIN/assets/img/faces/" + Session["profile_pic"].ToString();
          Label1.Text = Session["admin_firstname"].ToString();
        }
        catch (Exception ex)
        {
            Response.Redirect("Admin_Login.aspx");
        }
    }
}
