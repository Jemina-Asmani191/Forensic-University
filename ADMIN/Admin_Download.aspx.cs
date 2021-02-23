using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_download x = new Admin_download();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadfile_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploaddownload_pdffile.HasFile)
        {
            if (uploaddownload_pdffile.PostedFile.ContentType == "application/pdf")
            {

                if (uploaddownload_pdffile.PostedFile.ContentLength < 6000000)
                {
                    fname = uploaddownload_pdffile.FileName;
                    uploaddownload_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                    string qry = "insert into Admin_Download values('" + txtdownload_filename.Text + "' ,'" + uploaddownload_pdffile.FileName + "')";
                    x.admin_download_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_Download.aspx");
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

        txtdownload_filename.Text = "";
    }
}