using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_media x = new Admin_media();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadimage_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadmedia_image.HasFile)
        {
            if (uploadmedia_image.PostedFile.ContentType == "image/jpeg" || uploadmedia_image.PostedFile.ContentType == "image/png")
            {
                if (uploadmedia_image.PostedFile.ContentLength < 6000000)
                {
                    fname = uploadmedia_image.FileName;
                    uploadmedia_image.SaveAs(Server.MapPath("~/Media Image/" + fname));
                    string qry = "insert into Admin_Media values('" + uploadmedia_image.FileName + "','" + txtmediaimage_desc.Text + "')";
                    x.admin_media_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_Media.aspx");
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

        txtmediaimage_desc.Text = "";

    }
}