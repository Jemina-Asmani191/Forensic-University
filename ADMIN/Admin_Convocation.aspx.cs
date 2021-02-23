using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{

    Admin_convocation x = new Admin_convocation ();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadfile_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadconvocation_pdffile.HasFile)
        {
            if (uploadconvocation_pdffile.PostedFile.ContentType == "application/pdf")
            {

                if (uploadconvocation_pdffile.PostedFile.ContentLength < 600000)
                {
                    fname = uploadconvocation_pdffile.FileName;
                    uploadconvocation_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                    string qry = "insert into Admin_Convocation values('" + txtconvocation_filename.Text + "' ,'" + uploadconvocation_pdffile.FileName + "')";
                    x.admin_convocation_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_Convocation.aspx");
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

        txtconvocation_filename.Text = "";
    
    }
}