using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_research_guest_lectures
/// </summary>
public class Admin_research_guest_lectures
{
    dbconnection x = new dbconnection(); 
	public Admin_research_guest_lectures()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_research_guest_faculty_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}