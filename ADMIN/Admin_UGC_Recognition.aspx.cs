using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_UGC_recognition x = new Admin_UGC_recognition();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_uploadfile_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadugc_recodnition_pdffile.HasFile)
        {
            if (uploadugc_recodnition_pdffile.PostedFile.ContentType == "application/pdf")
            {

                if (uploadugc_recodnition_pdffile.PostedFile.ContentLength < 6000000)
                {
                    fname = uploadugc_recodnition_pdffile.FileName;
                    uploadugc_recodnition_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                    string qry = "insert into Admin_UGC_Recognition values('" + txtugc_recognition_filename.Text + "' ,'" + uploadugc_recodnition_pdffile.FileName + "')";
                    x.admin_UGC_recognition_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_UGC_Recognition.aspx");
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

        txtugc_recognition_filename.Text = "";
    }
}