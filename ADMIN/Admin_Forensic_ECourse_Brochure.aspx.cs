using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_forensic_ecourse_brochure x = new Admin_forensic_ecourse_brochure();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadfile_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadecourse_brochure_pdffile.HasFile)
        {
            if (uploadecourse_brochure_pdffile.PostedFile.ContentType == "application/pdf")
            {

                if (uploadecourse_brochure_pdffile.PostedFile.ContentLength < 6000000)
                {
                    fname = uploadecourse_brochure_pdffile.FileName;
                    uploadecourse_brochure_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                    string qry = "insert into Admin_Forensic_ECourse_Brochure values('" + txtecourse_brochuere_filename.Text + "' ,'" + uploadecourse_brochure_pdffile.FileName + "')";
                    x.admin_forensic_ecourse_brochure_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_Forensic_ECourse_Brochure.aspx");
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

        txtecourse_brochuere_filename.Text = "";

    }
}