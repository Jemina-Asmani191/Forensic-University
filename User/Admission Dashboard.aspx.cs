using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class User_Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;
    string username;

    protected void Page_Load(object sender, EventArgs e)
    {
      
        lbl_firstname.Text = Session["firstname"].ToString();
        lbl_lastname.Text = Session["lastname"].ToString();
        lbl_email.Text = Session["email"].ToString();
        lbl_contact_number.Text = Session["contactnumber"].ToString();
        lbl_address.Text = Session["address"].ToString();
        lbl_country.Text = Session["country"].ToString();
        lbl_pincode.Text = Session["pincode"].ToString();
        
        
    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admission Edit Profile.aspx");
       
        cn.Open();
        qry = "select * from Admission_register where username='" + username;
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
        }
        else
        {

        }
        cn.Close();
      

    }
    protected void btn_change_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admission Change Password.aspx");
    }
    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admission Home.aspx");
    }

    protected void Unnamed1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("Admission Receipt.aspx");
    }
}