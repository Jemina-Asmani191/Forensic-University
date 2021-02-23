using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.Mail;
using System.Net;



public partial class User_Default2 : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    Admission_Register x = new Admission_Register();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btn_signup_Click(object sender, EventArgs e)
    {

        cn.Open();
        qry = "select * from Admission_Register where username='" + txt_username.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Label1.Text = "Username Already Exist You Must Different Username";
        }
        else
        {
            string gender = string.Empty;
            if (RadioMale.Checked)
            {
                gender = "Male";
            }
            else
            {
                gender = "Female";
            }


            string fname;
            if (checkemail() == true)
        {
            lbl_email.Text = "Your Email Already Registered with Us";
        }
        else
        {
        
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







            qry = "insert into Admission_Register values('" + txt_stufname.Text + "','" + txt_stumname.Text + "','" + txt_stulname.Text + "','" + gender + "','" + txt_dateofbirth.Text + "','" + txt_eduqua.Text + "','" + txt_std_addr.Text + "','" + txt_std_country.Text + "','" + txt_std_zipcode.Text + "','" + txt_email.Text + "','" + txt_contact.Text + "','" + txt_username.Text + "','" + txt_password.Text + "','" + FileUpload_profile.FileName + "','" + FileUpload_proof.FileName + "')";
            x.admission_register_insert(qry);
            cn.Close();
                        MailMessage mail = new MailMessage();
                        string mailid = txt_email.Text;
                        mail.To.Add(mailid);
                        mail.From = new MailAddress("ifsu30@gmail.com");
                        mail.Subject = "Your Application Registered Successfully for IFSU 2019 Program";
                        string Body = "<html> <body> <br> <div background-color=blue><h2>Your Application Registered Successfully for IFSU 2019 Program </h2></div></body> </html>";
                        mail.Body = Body;
                        mail.IsBodyHtml = true;
                        SmtpClient smtp = new SmtpClient();
                        smtp.Host = "smtp.gmail.com";
                        smtp.Credentials = new System.Net.NetworkCredential("ifsu30@gmail.com", "ifsu12345");
                        smtp.Port = 587;  //465
                        smtp.EnableSsl = true;
                        smtp.Send(mail);
                        Label1.Text = "email-id and check it..";
                        Response.Redirect("Admission Register.aspx");

            

            txt_confirm_password.Text = "";
            txt_contact.Text = "";
            txt_dateofbirth.Text = "";
            txt_eduqua.Text = "";
            txt_email.Text = "";
            txt_password.Text = "";
            txt_std_addr.Text = "";
            txt_std_country.Text = "";
            txt_std_zipcode.Text = "";
            txt_stufname.Text = "";
            txt_stulname.Text = "";
            txt_stumname.Text = "";
            txt_username.Text = "";


        }
        } 
    }

        private Boolean checkemail()
         {
        Boolean emailavailable = false;
        String mycon = @"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\Forensic\University\App_Data\University.mdf;Integrated Security=True;User Instance=True";
        String myquery = "Select * from Admission_Register where email='" + txt_email.Text +"'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            emailavailable = true;

        }
        con.Close();

        return emailavailable;
        }



    
    protected void btn_reset_Click(object sender, EventArgs e)
    {
        txt_confirm_password.Text = "";
        txt_contact.Text = "";
        txt_dateofbirth.Text = "";
        txt_eduqua.Text = "";
        txt_email.Text = "";
        txt_password.Text = "";
        txt_std_addr.Text = "";
        txt_std_country.Text = "";
        txt_std_zipcode.Text = "";
        txt_stufname.Text = "";
        txt_stulname.Text = "";
        txt_stumname.Text = "";
        txt_username.Text = "";
    }
}