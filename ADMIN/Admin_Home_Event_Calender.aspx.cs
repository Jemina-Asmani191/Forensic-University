using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default2 : System.Web.UI.Page
{
    Admin_home_event_calender x = new Admin_home_event_calender();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Home_Event_Calender values('" + txtevent_date.Text + "','" + txtevent_month.Text + "','" + txtevent_name.Text + "','" + txtevent_venue.Text+ "')";
        x.admin_home_event_calender_insert(qry);
        Response.Redirect("Admin_Home_Event_Calender.aspx");

        txtevent_date.Text = "";
        txtevent_month.Text = "";
        txtevent_venue.Text = "";
        txtevent_name.Text = "";
    }
}