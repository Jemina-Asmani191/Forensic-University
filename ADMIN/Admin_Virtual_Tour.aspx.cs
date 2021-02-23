using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default2 : System.Web.UI.Page
{
    Admin_virtual_tour x = new Admin_virtual_tour();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadimage_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadvirtual_tour_image.HasFile)
        {
            if (uploadvirtual_tour_image.PostedFile.ContentType == "image/jpeg")
            {
                if (uploadvirtual_tour_image.PostedFile.ContentLength < 600000)
                {
                    fname = uploadvirtual_tour_image.FileName;
                    uploadvirtual_tour_image.SaveAs(Server.MapPath("~/Virtual Tour/" + fname));
                    string qry = "insert into Admin_Virtual_Tour values('" + uploadvirtual_tour_image.FileName + "')";
                    x.admin_virtual_tour_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_Virtual_Tour.aspx");
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


        
    }
}