
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

    Admission_Register x = new Admission_Register();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            txt_stufname.Text = Session["firstname"].ToString();
            txt_stumname.Text = Session["middlename"].ToString();
            txt_stulname.Text = Session["lastname"].ToString();
            txt_dateofbirth.Text = Session["dateofbirth"].ToString();
            //txt_eduqua.Text = Session["eduation"].ToString();
            txt_std_addr.Text = Session["address"].ToString();
            txt_std_country.Text = Session["country"].ToString();
            txt_std_zipcode.Text = Session["pincode"].ToString();
            txt_email.Text = Session["email"].ToString();
            txt_contact.Text = Session["contactnumber"].ToString();
        }
        
    }
    protected void btn_signup_Click(object sender, EventArgs e)
    {

    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
    }
    protected void btn_update_Click1(object sender, EventArgs e)
    {

        string gender = string.Empty;
        if (Radiomale.Checked)
        {
            gender = "Male";
        }
        else
        {
            gender = "Female";
        }





        string fname;
        if (FileUpload_profile.HasFile)
        {
            if (FileUpload_profile.PostedFile.ContentType == "image/jpeg")
            {
                if (FileUpload_profile.PostedFile.ContentLength < 100000)
                {
                    fname = FileUpload_profile.FileName;
                    FileUpload_profile.SaveAs(Server.MapPath("~/Register pic/" + fname));

                    lbl_profile.Text = "file upload successfully..";

                }
                else
                {
                    lbl_profile.Text = "file size is too large";
                }
            }
            else
            {
                lbl_profile.Text = "please select image file";
            }
        }
        else
        {
            lbl_profile.Text = "please select image file";
        }


        if (FileUpload_proof.HasFile)
        {
            if (FileUpload_proof.PostedFile.ContentType == "image/jpeg")
            {
                if (FileUpload_proof.PostedFile.ContentLength < 2000000)
                {
                    fname = FileUpload_proof.FileName;
                    FileUpload_proof.SaveAs(Server.MapPath("~/Register pic/" + fname));

                    lbl_proof.Text = "file upload successfully..";

                }
                else
                {
                    lbl_proof.Text = "file size is too large";
                }
            }
            else
            {
                lbl_proof.Text = "please select image file";
            }
        }
        else
        {
            lbl_proof.Text = "please select image file";
        }


        qry = "Update Admission_Register set firstname='" + txt_stufname.Text + "', middlename='" + txt_stumname.Text + "', lastname='" + txt_stulname.Text + "', gender='" + gender + "', dateofbirth='" + txt_dateofbirth.Text + "', education='" + txt_eduqua.Text + "', address='" + txt_std_addr.Text + "', country='" + txt_std_country.Text + "', pincode='" + txt_std_zipcode.Text + "', profilepic='" + FileUpload_profile.FileName + "', proofimage='" + FileUpload_proof.FileName + "' where email='" + Session["email"].ToString() + "'";

        x.admission_register_update(qry);


        cn.Open();
        qry = "select * from Admission_Register where email='" + Session["email"].ToString() + "'";
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

            Response.Redirect("Admission Dashboard.aspx"); 
        }
        
    }
}