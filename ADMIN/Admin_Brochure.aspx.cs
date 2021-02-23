using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default2 : System.Web.UI.Page
{
    Admin_brochure x = new Admin_brochure();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadfile_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadbrochure_pdffile.HasFile)
        {
            if (uploadbrochure_pdffile.PostedFile.ContentType == "application/pdf")
            {

                if (uploadbrochure_pdffile.PostedFile.ContentLength < 6000000)
                {
                    fname = uploadbrochure_pdffile.FileName;
                    uploadbrochure_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                    string qry = "insert into Admin_Brochure values('" + txtbrochure_filename.Text + "' ,'" + uploadbrochure_pdffile.FileName + "')";
                    x.admin_brochure_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_Brochure.aspx");
                }
                else
                {
                    lbl_path.Text = "file size is too large";
                }
            }
            else
            {
                lbl_path.Text = "please select PDF file";
            }
        }
        else
        {
            lbl_path.Text = "please select PDF file";
     
       }
        txtbrochure_filename.Text="";
    }
}