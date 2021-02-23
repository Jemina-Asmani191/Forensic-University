using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_university_infrastructural_facility x = new Admin_university_infrastructural_facility();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadimage_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploaduniversity_infrastructural_facilty_image.HasFile)
        {
            if (uploaduniversity_infrastructural_facilty_image.PostedFile.ContentType == "image/jpeg")
            {
                if (uploaduniversity_infrastructural_facilty_image.PostedFile.ContentLength < 600000)
                {
                    fname = uploaduniversity_infrastructural_facilty_image.FileName;
                    uploaduniversity_infrastructural_facilty_image.SaveAs(Server.MapPath("~/University Infrastructural Facility Image/" + fname));
                    string qry = "insert into Admin_University_Infrastructural_Facility values('" + uploaduniversity_infrastructural_facilty_image.FileName + "','" + txtimage_desc.Text + "')";
                    x.admin_university_infrastructural_facility_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_University_Infrastructural_Facility.aspx");
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