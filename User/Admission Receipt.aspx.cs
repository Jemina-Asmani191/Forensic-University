using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Admission_Receipt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_register.Text = Session["register_id"].ToString();
        lbl_fname.Text = Session["firstname"].ToString();
        lbl_mname.Text = Session["middlename"].ToString();
        lbl_lname.Text = Session["lastname"].ToString();
        lbl_gender .Text = Session["gender"].ToString ();
        lbl_fathername.Text = Session["middlename"].ToString();
        lbl_email.Text = Session["email"].ToString();
        lbl_address.Text = Session["address"].ToString();
        lbl_country.Text = Session["country"].ToString();
        lbl_pincode.Text = Session["pincode"].ToString();
        lbl_dob.Text = Session["dateofbirth"].ToString();
        lbl_number.Text = Session["contactnumber"].ToString();
        Image1.ImageUrl = "~/Register pic/" + Session["profilepic"].ToString();

        lbl_course.Text = Session["course_name"].ToString();
      
        lbl_amt.Text = Session["course_fee"].ToString();


    }
}