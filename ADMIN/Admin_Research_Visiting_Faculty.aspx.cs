using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default2 : System.Web.UI.Page
{
    Admin_research_visiting_faculty x = new Admin_research_visiting_faculty();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string qry = "insert into Admin_Research_Visiting_Faculty values('" + txtvisifacu_name .Text  + "','" + txtvisifacu_desi .Text  + "','" + txtvisifacu_organi.Text  + "','" + txtvisifacu_quali .Text + "','" + txtvisifacu_speci .Text  + "')";
        x.admin_research_visiting_faculty_insert(qry);
        Response.Redirect("Admin_Research_Visiting_Faculty.aspx");

        txtvisifacu_name.Text = "";
        txtvisifacu_desi.Text = "";
        txtvisifacu_organi.Text = "";
        txtvisifacu_organi.Text = "";
        txtvisifacu_quali.Text = "";
        txtvisifacu_speci.Text = "";

    }
}