using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_academic_calendar
/// </summary>
public class Admin_academic_calendar
{
    dbconnection x = new dbconnection();
	public Admin_academic_calendar()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_academic_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}