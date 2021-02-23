using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {

      

        
    }

    protected void Unnamed1_ItemCommand(object source, DataListCommandEventArgs e)
    {
       

        Response.Redirect("Admission Home.aspx");
      
      
        //Session["course_name"] = dr["course_name"].ToString();
        //Session["course_fee"] = dr["course_fee"].ToString();
    }
}