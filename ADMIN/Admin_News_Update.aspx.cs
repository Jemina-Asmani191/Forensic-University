using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_News_Update x = new Admin_News_Update();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadimage_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadnews_image.HasFile)
        {
            if (uploadnews_image.PostedFile.ContentType == "image/jpeg")
            {
                if (uploadnews_image.PostedFile.ContentLength < 600000)
                {
                    fname = uploadnews_image.FileName;
                    uploadnews_image.SaveAs(Server.MapPath("~/News Image/" + fname));
                    string qry = "insert into Admin_News_Update values('" + uploadnews_image.FileName + "','" + txtnewsimage_desc.Text + "')";
                    x.admin_news_update_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_News_Update.aspx");
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
        txtnewsimage_desc.Text = "";
    }
}