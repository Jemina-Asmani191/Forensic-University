using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_concerned_committee x = new Admin_concerned_committee();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadfile_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadConcerned_Committee_pdffile.HasFile)
        {
            if (uploadConcerned_Committee_pdffile.PostedFile.ContentType == "application/pdf")
            {

                if (uploadConcerned_Committee_pdffile.PostedFile.ContentLength < 60000000)
                {
                    fname = uploadConcerned_Committee_pdffile.FileName;
                    uploadConcerned_Committee_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                    string qry = "insert into Admin_Concerned_Committee values('" + txtconcerned_committee_filename.Text + "' ,'" + uploadConcerned_Committee_pdffile.FileName + "')";
                    x.admin_concerned_committee_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_Concerned_Committee.aspx");
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

        txtconcerned_committee_filename.Text = "";
    }
}