using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_behavioral_admission_eligibility x = new Admin_behavioral_admission_eligibility();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadfile_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadadmission_eligibility_pdffile.HasFile)
        {
            if (uploadadmission_eligibility_pdffile.PostedFile.ContentType == "application/pdf")
            {

                if (uploadadmission_eligibility_pdffile.PostedFile.ContentLength < 6000000)
                {
                    fname = uploadadmission_eligibility_pdffile.FileName;
                    uploadadmission_eligibility_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                    string qry = "insert into Admin_Behavioral_Admission_Eligibility values('" + txtadmission_eligibility_filename.Text + "' ,'" + uploadadmission_eligibility_pdffile.FileName + "')";
                    x.admin_behavioral_admission_eligibility_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_Behavioral_Admission_Eligibility.aspx");
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

        txtadmission_eligibility_filename.Text = "";

    }
}