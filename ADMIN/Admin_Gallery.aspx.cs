using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_gallery x = new Admin_gallery();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   
    protected void btn_uploadimage_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadgallery_image.HasFile)
        {
            if (uploadgallery_image.PostedFile.ContentType == "image/jpeg")
            {
                if (uploadgallery_image.PostedFile.ContentLength < 600000)
                {
                    fname = uploadgallery_image.FileName;
                    uploadgallery_image.SaveAs(Server.MapPath("~/Gallery Image/" + fname));
                    string qry = "insert into Admin_Gallery values('" + uploadgallery_image.FileName + "','" + txtimage_desc.Text + "')";
                    x.admin_gallery_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_Gallery.aspx");
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


        txtimage_desc.Text = "";

    }
}