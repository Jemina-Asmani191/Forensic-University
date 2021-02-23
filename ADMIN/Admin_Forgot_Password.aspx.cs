using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;

public partial class ADMIN_Admin_Forgot_Password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_forgot_password_Click(object sender, EventArgs e)
    {
        string mainconn = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(mainconn);
        string sqlquery = "select admin_email,password from Admin_Login where admin_email=@Email";
        SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
        sqlcomm.Parameters.AddWithValue("@Email", txtemail.Text);
        sqlconn.Open();
        SqlDataReader sdr = sqlcomm.ExecuteReader();
        if (sdr.Read())
        {
            string firstname = sdr["admin_email"].ToString();
            string password = sdr["password"].ToString();

            MailMessage mm = new MailMessage("ifsu30@gmail.com", txtemail.Text);
            mm.Subject = "Your Password !";
            mm.Body = string.Format("Helloo : <h1>{0}</h1> is your email id <br/> ypur password is <h1>{1}</h1>", firstname, password);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential nc = new NetworkCredential();
            nc.UserName = "ifsu30@gmail.com";
            nc.Password = "ifsu12345";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = nc;
            smtp.Port = 587;
            smtp.Send(mm);
            Labmsg.Text = "Your Password has been sent!";
            Labmsg.ForeColor = Color.Green;
        }
        else
        {

            Labmsg.Text = txtemail.Text + "-This Email Id Is Not Exist In Our Database !";
            Labmsg.ForeColor = Color.Red;
        }
    }
}