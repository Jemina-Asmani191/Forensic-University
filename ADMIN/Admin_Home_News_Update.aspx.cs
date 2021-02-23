using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default2 : System.Web.UI.Page
{
    Admin_home_news_update x = new Admin_home_news_update();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadimage_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadnews_image.HasFile)
        {
            if (uploadnews_image.PostedFile.ContentType == "image/jpeg" || uploadnews_image.PostedFile.ContentType == "image/png")
            {
                if (uploadnews_image.PostedFile.ContentLength < 600000)
                {
                    fname = uploadnews_image.FileName;
                    uploadnews_image.SaveAs(Server.MapPath("~/Home News Image/" + fname));
                    string qry = "insert into Admin_Home_News_Updates values('" + txt_news_image_desc.Text + "','" + uploadnews_image.FileName + "')";
                    x.admin_home_news_update_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_Home_News_Update.aspx");
                }
                else
                {
                    lbl_path.Text = "file size is too large";
                }
            }
            else
            {
                lbl_path.Text = "please select image file";
            }
        }
        else
        {
            lbl_path.Text = "please select image file";
        }


        txt_news_image_desc.Text = "";
    }
}