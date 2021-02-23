using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_students_achievement x = new Admin_students_achievement();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadimage_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadachievement_image.HasFile)
        {
            if (uploadachievement_image.PostedFile.ContentType == "image/jpeg")
            {
                if (uploadachievement_image.PostedFile.ContentLength < 600000)
                {
                    fname = uploadachievement_image.FileName;
                    uploadachievement_image.SaveAs(Server.MapPath("~/Students Achievement Image/" + fname));
                    string qry = "insert into Admin_Students_Achievement values('" + uploadachievement_image.FileName + "','" + txtachievementimage_desc .Text  + "')";
                    x.admin_achievement_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_Students_Achievements.aspx");
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
        txtachievementimage_desc.Text = "";
    }
}