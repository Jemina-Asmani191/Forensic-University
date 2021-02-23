using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_NAAC_accreditation x = new Admin_NAAC_accreditation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadfile_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadNAAC_Accreditation_pdffile.HasFile)
        {
            if (uploadNAAC_Accreditation_pdffile.PostedFile.ContentType == "application/pdf")
            {

                if (uploadNAAC_Accreditation_pdffile.PostedFile.ContentLength < 6000000)
                {
                    fname = uploadNAAC_Accreditation_pdffile.FileName;
                    uploadNAAC_Accreditation_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                    string qry = "insert into Admin_NAAC_Accreditation values('" + txtNAAC_Accreditation_filename.Text + "' ,'" + uploadNAAC_Accreditation_pdffile.FileName + "')";
                    x.admin_NAAC_accreditation_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_NAAC_Accreditation.aspx");
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
        txtNAAC_Accreditation_filename.Text = "";

    }
}