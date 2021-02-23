using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Default : System.Web.UI.Page
{
    Admin_event_calender x = new Admin_event_calender();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_uploadimage_Click(object sender, EventArgs e)
    {
        string fname;
        if (uploadevent_image.HasFile)
        {
            if (uploadevent_image.PostedFile.ContentType == "image/png")
            {
                if (uploadevent_image.PostedFile.ContentLength < 600000)
                {
                    fname = uploadevent_image.FileName;
                    uploadevent_image.SaveAs(Server.MapPath("~/Event Image/" + fname));
                    string qry = "insert into Admin_Event_calendar values('" + uploadevent_image.FileName + "','" + txteventimage_desc.Text + "')";
                    x.admin_event_calendar_insert(qry);
                    lbl_path.Text = "file upload successfully..";
                    Response.Redirect("Admin_Event_Calendar.aspx");
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
        txteventimage_desc.Text = "";
    }
}