using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_Eresourse x = new Admin_Eresourse();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadfile_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploaderesourse_pdffile.HasFile)
        {
            if (uploaderesourse_pdffile.PostedFile.ContentType == "application/pdf")
            {

                if (uploaderesourse_pdffile.PostedFile.ContentLength < 600000)
                {
                    fname = uploaderesourse_pdffile.FileName;
                    uploaderesourse_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                    string qry = "insert into Admin_EResourse values('" + txteresourse_filename.Text + "' ,'" + uploaderesourse_pdffile.FileName + "')";
                    x.admin_eresourse_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_EReasourse.aspx");
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