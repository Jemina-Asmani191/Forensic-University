using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_behavioral_full_faculty
/// </summary>
public class Admin_behavioral_full_faculty
{
    dbconnection x = new dbconnection();
	public Admin_behavioral_full_faculty()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_behavioral_full_faculty_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}