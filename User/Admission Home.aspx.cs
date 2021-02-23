using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class User_Default2 : System.Web.UI.Page
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
        qry = "select * from Admission_Register where username='" + txtusername.Text + "'and password='" + txtpassword.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();

            Session["register_id"] = dr["register_id"].ToString();

         

            Session["firstname"] = dr["firstname"].ToString();
            Session["middlename"] = dr["middlename"].ToString();
            Session["lastname"] = dr["lastname"].ToString();
            Session["gender"] = dr["gender"].ToString();
            Session["dateofbirth"] = dr["dateofbirth"].ToString();
            Session["education"] = dr["education"].ToString();
            Session["email"] = dr["email"].ToString();
            Session["contactnumber"] = dr["contactnumber"].ToString();
            Session["address"] = dr["address"].ToString();
            Session["country"] = dr["country"].ToString();
            Session["pincode"] = dr["pincode"].ToString();
            Session["profilepic"] = dr["profilepic"].ToString();


            cn.Close();

            cn.Open();
            qry = "select * from Admission_Course  ";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();

                Session["course_name"] = dr["course_name"].ToString();
                Session["course_fee"] = dr["course_fee"].ToString();


            }
            else
            {
                lbl_login.Text = "no record";
            }
            cn.Close();




            Response.Redirect("Admission Dashboard.aspx");
        }
        else
        {
            lbl_login.Text = "* Invalid Log In";
        }
      



    }
}