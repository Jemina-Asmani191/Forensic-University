using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_NIRF x = new Admin_NIRF();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadfile_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadNIRF_pdffile.HasFile)
        {
            if (uploadNIRF_pdffile.PostedFile.ContentType == "application/pdf")
            {

                if (uploadNIRF_pdffile.PostedFile.ContentLength < 600000)
                {
                    fname = uploadNIRF_pdffile.FileName;
                    uploadNIRF_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                    string qry = "insert into Admin_NIRF values('" + txtNIRF_filename.Text + "','" + uploadNIRF_pdffile.FileName + "')";
                    x.admin_NIRF_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_NIRF.aspx");
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
    }
}