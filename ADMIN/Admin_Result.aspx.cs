using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_result x = new Admin_result();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   protected void btn_uploadfile_Click1(object sender, EventArgs e)
    {
        string fname;
        if (uploadrd_sem1_2_result_pdffile.HasFile)
        {
            if (uploadrd_sem1_2_result_pdffile.PostedFile.ContentType == "application/pdf")
            {

                if (uploadrd_sem1_2_result_pdffile.PostedFile.ContentLength < 6000000)
                {
                    fname = uploadrd_sem1_2_result_pdffile.FileName;
                    uploadrd_sem1_2_result_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                    string qry = "insert into Admin_Result_Research_sem1_2 values('" + txtrd_sem1_2_result_filename.Text + "' ,'" + uploadrd_sem1_2_result_pdffile.FileName + "')";
                    x.admin_result_insert(qry);
                    lbl_path1.Text = "file upload successfully..";
                    Response.Redirect("Admin_Result.aspx");
                }
                else
                {
                    lbl_path1.Text = "file size is too large";
                }
            }
            else
            {
                lbl_path1.Text = "please select PDF file";
            }
        }
        else
        {
            lbl_path1.Text = "please select PDF file";
        }
        txtrd_sem1_2_result_filename.Text = "";
    }
   protected void btn_uploadfile2_Click(object sender, EventArgs e)
   {
       string fname;
       if (uploadbs_sem1_2_result_pdffile.HasFile)
       {
           if (uploadbs_sem1_2_result_pdffile.PostedFile.ContentType == "application/pdf")
           {

               if (uploadbs_sem1_2_result_pdffile.PostedFile.ContentLength < 6000000)
               {
                   fname = uploadbs_sem1_2_result_pdffile.FileName;
                   uploadbs_sem1_2_result_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                   string qry = "insert into Admin_Result_Behavioral_sem1_2 values('" + txtbs_sem1_2_result_filename.Text + "' ,'" + uploadbs_sem1_2_result_pdffile.FileName + "')";
                   x.admin_result_insert(qry);
                   lbl_path2.Text = "file upload successfully..";
                   Response.Redirect("Admin_Result.aspx");
               }
               else
               {
                   lbl_path2.Text = "file size is too large";
               }
           }
           else
           {
               lbl_path2.Text = "please select PDF file";
           }
       }
       else
       {
           lbl_path2.Text = "please select PDF file";
       }
       txtbs_sem1_2_result_filename.Text = "";
   }
   protected void btn_uploadfile3_Click(object sender, EventArgs e)
   {
       string fname;
       if (uploadfs_sem1_2_result_pdffile.HasFile)
       {
           if (uploadfs_sem1_2_result_pdffile.PostedFile.ContentType == "application/pdf")
           {

               if (uploadfs_sem1_2_result_pdffile.PostedFile.ContentLength < 6000000)
               {
                   fname = uploadfs_sem1_2_result_pdffile.FileName;
                   uploadfs_sem1_2_result_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                   string qry = "insert into Admin_Result_Forensic_sem1_2 values('" + txtfs_sem1_2_result_filename.Text + "' ,'" + uploadfs_sem1_2_result_pdffile.FileName + "')";
                   x.admin_result_insert(qry);
                   lbl_path3.Text = "file upload successfully..";
                   Response.Redirect("Admin_Result.aspx");
               }
               else
               {
                   lbl_path3.Text = "file size is too large";
               }
           }
           else
           {
               lbl_path3.Text = "please select PDF file";
           }
       }
       else
       {
           lbl_path3.Text = "please select PDF file";
       }
       txtfs_sem1_2_result_filename.Text = "";
   }
   protected void btn_uploadfile4_Click(object sender, EventArgs e)
   {
       string fname;
       if (uploadrd_sem3_4_result_pdffile.HasFile)
       {
           if (uploadrd_sem3_4_result_pdffile.PostedFile.ContentType == "application/pdf")
           {

               if (uploadrd_sem3_4_result_pdffile.PostedFile.ContentLength < 6000000)
               {
                   fname = uploadrd_sem3_4_result_pdffile.FileName;
                   uploadrd_sem3_4_result_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                   string qry = "insert into Admin_Result_Research_sem3_4 values('" + txtrd_sem3_4_result_filename.Text + "' ,'" + uploadrd_sem3_4_result_pdffile.FileName + "')";
                   x.admin_result_insert(qry);
                   lbl_path4.Text = "file upload successfully..";
                   Response.Redirect("Admin_Result.aspx");
               }
               else
               {
                   lbl_path4.Text = "file size is too large";
               }
           }
           else
           {
               lbl_path4.Text = "please select PDF file";
           }
       }
       else
       {
           lbl_path4.Text = "please select PDF file";
       }
       txtrd_sem3_4_result_filename.Text = "";
   }
   protected void btn_uploadfile5_Click(object sender, EventArgs e)
   {
       string fname;
       if (uploadbs_sem3_4_result_pdffile.HasFile)
       {
           if (uploadbs_sem3_4_result_pdffile.PostedFile.ContentType == "application/pdf")
           {

               if (uploadbs_sem3_4_result_pdffile.PostedFile.ContentLength < 6000000)
               {
                   fname = uploadbs_sem3_4_result_pdffile.FileName;
                   uploadbs_sem3_4_result_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                   string qry = "insert into Admin_Result_Behavioral_sem3_4 values('" + txtbs_sem3_4_result_filename.Text + "' ,'" + uploadbs_sem3_4_result_pdffile.FileName + "')";
                   x.admin_result_insert(qry);
                   lbl_path5.Text = "file upload successfully..";
                   Response.Redirect("Admin_Result.aspx");
               }
               else
               {
                   lbl_path5.Text = "file size is too large";
               }
           }
           else
           {
               lbl_path5.Text = "please select PDF file";
           }
       }
       else
       {
           lbl_path5.Text = "please select PDF file";
       }
       txtbs_sem3_4_result_filename.Text = "";
   }
   protected void btn_uploadfile6_Click(object sender, EventArgs e)
   {
       string fname;
       if (uploadfs_sem3_4_result_pdffile.HasFile)
       {
           if (uploadfs_sem3_4_result_pdffile.PostedFile.ContentType == "application/pdf")
           {

               if (uploadfs_sem3_4_result_pdffile.PostedFile.ContentLength < 6000000)
               {
                   fname = uploadfs_sem3_4_result_pdffile.FileName;
                   uploadfs_sem3_4_result_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                   string qry = "insert into Admin_Result_Forensic_sem3_4 values('" + txtfs_sem3_4_result_filename.Text + "' ,'" + uploadfs_sem3_4_result_pdffile.FileName + "')";
                   x.admin_result_insert(qry);
                   lbl_path6.Text = "file upload successfully..";
                   Response.Redirect("Admin_Result.aspx");
               }
               else
               {
                   lbl_path6.Text = "file size is too large";
               }
           }
           else
           {
               lbl_path6.Text = "please select PDF file";
           }
       }
       else
       {
           lbl_path6.Text = "please select PDF file";
       }
       txtfs_sem3_4_result_filename.Text = "";
   }
   protected void btn_uploadfile7_Click(object sender, EventArgs e)
   {
       string fname;
       if (uploadrd_atkt_result_pdffile.HasFile)
       {
           if (uploadrd_atkt_result_pdffile.PostedFile.ContentType == "application/pdf")
           {

               if (uploadrd_atkt_result_pdffile.PostedFile.ContentLength < 6000000)
               {
                   fname = uploadrd_atkt_result_pdffile.FileName;
                   uploadrd_atkt_result_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                   string qry = "insert into Admin_Result_Research_atkt values('" + txtrd_atkt_result_filename.Text + "' ,'" + uploadrd_atkt_result_pdffile.FileName + "')";
                   x.admin_result_insert(qry);
                   lbl_path7.Text = "file upload successfully..";
                   Response.Redirect("Admin_Result.aspx");
               }
               else
               {
                   lbl_path7.Text = "file size is too large";
               }
           }
           else
           {
               lbl_path7.Text = "please select PDF file";
           }
       }
       else
       {
           lbl_path7.Text = "please select PDF file";
       }
       txtrd_atkt_result_filename.Text = "";
   }
   protected void btn_uploadfile8_Click(object sender, EventArgs e)
   {
       string fname;
       if (uploadbs_atkt_result_pdffile.HasFile)
       {
           if (uploadbs_atkt_result_pdffile.PostedFile.ContentType == "application/pdf")
           {

               if (uploadbs_atkt_result_pdffile.PostedFile.ContentLength < 6000000)
               {
                   fname = uploadbs_atkt_result_pdffile.FileName;
                   uploadbs_atkt_result_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                   string qry = "insert into Admin_Result_Behavioral_atkt values('" + txtbs_atkt_result_filename.Text + "' ,'" + uploadbs_atkt_result_pdffile.FileName + "')";
                   x.admin_result_insert(qry);
                   lbl_path8.Text = "file upload successfully..";
                   Response.Redirect("Admin_Result.aspx");
               }
               else
               {
                   lbl_path8.Text = "file size is too large";
               }
           }
           else
           {
               lbl_path8.Text = "please select PDF file";
           }
       }
       else
       {
           lbl_path8.Text = "please select PDF file";
       }
       txtbs_atkt_result_filename.Text = "";
   }
   protected void btn_uploadfile9_Click(object sender, EventArgs e)
   {
       string fname;
       if (uploadfs_atkt_result_pdffile.HasFile)
       {
           if (uploadfs_atkt_result_pdffile.PostedFile.ContentType == "application/pdf")
           {

               if (uploadfs_atkt_result_pdffile.PostedFile.ContentLength < 6000000)
               {
                   fname = uploadfs_atkt_result_pdffile.FileName;
                   uploadfs_atkt_result_pdffile.SaveAs(Server.MapPath("~/PDF_File/" + fname));
                   string qry = "insert into Admin_Result_Forensic_atkt values('" + txtfs_atkt_result_filename.Text + "' ,'" + uploadfs_atkt_result_pdffile.FileName + "')";
                   x.admin_result_insert(qry);
                   lbl_path9.Text = "file upload successfully..";
                   Response.Redirect("Admin_Result.aspx");
               }
               else
               {
                   lbl_path9.Text = "file size is too large";
               }
           }
           else
           {
               lbl_path9.Text = "please select PDF file";
           }
       }
       else
       {
           lbl_path9.Text = "please select PDF file";
       }
       txtfs_atkt_result_filename.Text = "";

   }
}