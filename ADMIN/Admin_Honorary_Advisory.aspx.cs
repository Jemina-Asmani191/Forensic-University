﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class ADMIN_Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            StreamReader sr = new StreamReader(Server.MapPath("~/HtmlPage/Admin_Honorary_Advisory.htm"));
            CKEditorControl1.Text = sr.ReadToEnd();
            sr.Close();
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        StreamWriter sw = new StreamWriter(Server.MapPath("~/HtmlPage/Admin_Honorary_Advisory.htm"));
        sw.Write(CKEditorControl1.Text);
        sw.Close();

    }
}