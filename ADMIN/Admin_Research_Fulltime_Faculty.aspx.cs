﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default2 : System.Web.UI.Page
{
    Admin_research_fulltime_faculty x = new Admin_research_fulltime_faculty();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadimage_Click(object sender, EventArgs e)
    {
        

    }
    protected void btn_uploadimage_Click1(object sender, EventArgs e)
    {
        string fname;
        if (uploadfulltimefaculty_image.HasFile)
        {
            if (uploadfulltimefaculty_image.PostedFile.ContentType == "image/jpeg")
            {
                if (uploadfulltimefaculty_image.PostedFile.ContentLength < 60000000)
                {
                    fname = uploadfulltimefaculty_image.FileName;
                    uploadfulltimefaculty_image.SaveAs(Server.MapPath("~/Research Fulltime Faculty Image/" + fname));
                    string qry = "insert into Admin_Research_FullTime_Faculty values('" + uploadfulltimefaculty_image.FileName + "','" + txtfullfacu_name.Text + "','" + txtfullfacu_quali.Text + "','" + txtfullfacu_desig.Text + "','" + txtfullfacu_email.Text + "','" + txtfullfacu_expr.Text + "','" + txtfullfacu_speci.Text + "','" + txtfullfacu_publi.Text + "')";
                    x.admin_research_fulltime_faculty_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_Research_Fulltime_Faculty.aspx");
                }
                else
                {
                    lbl_path.Text = "file size is too large";
                }
            }
            else
            {
                lbl_path.Text = "please select image file";
            }
        }
        else
        {
            lbl_path.Text = "please select image file";
        }

        txtfullfacu_name.Text = "";
        txtfullfacu_quali.Text = "";
        txtfullfacu_desig.Text = "";
        txtfullfacu_email.Text = "";
        txtfullfacu_expr.Text = "";
        txtfullfacu_speci.Text = "";
        txtfullfacu_publi.Text = "";

    }
}