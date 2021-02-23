using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class User_Default2 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_forgotpass_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        //SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter("select password from Admission_Register where password='" + txt_oldpass .Text + "'", cn);
        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count.ToString() == "1")
        {
            if (txt_newpass.Text == txt_newpassrep.Text )
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("Update Admission_Register set password ='" + txt_newpassrep .Text  + "'where password='" + txt_oldpass .Text  + "'", cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                Label1.Text = "successfully updated";

            }
            else
            {
                Label1.Text = "New password and confirm password should be same";
            }
        }
        else
        {
            Label1.Text = "please check your old password..";
        }
        txt_oldpass .Text = "";
        txt_newpass.Text = "";
       txt_newpassrep .Text = "";

    }
}