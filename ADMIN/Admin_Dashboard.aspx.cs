using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class ADMIN_Default2 : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry,notice,news,contact,media,visitor,gallery,admission,calender;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select count(*) from Admin_Notice_Board";
        cmd = new SqlCommand(qry, cn);
        notice = cmd.ExecuteScalar().ToString();
        lbl_notice.Text = notice;
        cn.Close();


        cn.Open();
        qry = "select count(*) from Admin_News_Update";
        cmd = new SqlCommand(qry, cn);
        news = cmd.ExecuteScalar().ToString();
        lbl_news.Text = news;
        cn.Close();


        cn.Open();
        qry = "select count(*) from Admin_ContactUs";
        cmd = new SqlCommand(qry, cn);
        contact = cmd.ExecuteScalar().ToString();
        lbl_contact.Text = contact;
        cn.Close();


        cn.Open();
        qry = "select count(*) from Admin_Media";
        cmd = new SqlCommand(qry, cn);
        media = cmd.ExecuteScalar().ToString();
        lbl_media.Text = media;
        cn.Close();


        cn.Open();
        qry = "select count(*) from Admin_Visitors";
        cmd = new SqlCommand(qry, cn);
        visitor = cmd.ExecuteScalar().ToString();
        lbl_visitor.Text = visitor;
        cn.Close();

        
        cn.Open();
        qry = "select count(*) from Admin_Gallery";
        cmd = new SqlCommand(qry, cn);
        gallery = cmd.ExecuteScalar().ToString();
        lbl_gallery.Text = gallery;
        cn.Close();

        cn.Open();
        qry = "select count(*) from Admission_Register";
        cmd = new SqlCommand(qry, cn);
        admission = cmd.ExecuteScalar().ToString();
        lbl_register.Text = admission;
        cn.Close();


        cn.Open();
        qry = "select count(*) from Admin_Academic_Calendar";
        cmd = new SqlCommand(qry, cn);
        calender = cmd.ExecuteScalar().ToString();
        lbl_calender.Text = calender;
        cn.Close();

    }
}