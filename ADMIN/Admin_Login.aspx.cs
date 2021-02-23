using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class ADMIN_Admin_Login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;

    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Admin_Login where admin_email='" + txtemail.Text + "'and password='" + txtpassword.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
                Session["admin_firstname"] = dr["admin_firstname"].ToString() ;
                Session["profile_pic"] = dr["profile_pic"].ToString();
                Response.Redirect("Admin_Dashboard.aspx");           
        }
        else
        {
            Label1.Text = "* Invalid Log In";
        }
        cn.Close();
       
    }
}