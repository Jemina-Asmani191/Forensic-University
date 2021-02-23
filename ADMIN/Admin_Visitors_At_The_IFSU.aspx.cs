using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_Visitors x = new Admin_Visitors();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadimage_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadvisitor_image.HasFile)
        {
            if (uploadvisitor_image.PostedFile.ContentType == "image/jpeg")
            {
                if (uploadvisitor_image.PostedFile.ContentLength < 600000)
                {
                    fname = uploadvisitor_image.FileName;
                    uploadvisitor_image.SaveAs(Server.MapPath("~/Visitor Image/" + fname));
                    string qry = "insert into Admin_Visitors values('" + uploadvisitor_image.FileName + "','" + txtvisitorsimage_desc .Text  + "')";
                    x.admin_visitors_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_Visitors_At_The_IFSU.aspx");
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
        txtvisitorsimage_desc.Text = "";
    }
}