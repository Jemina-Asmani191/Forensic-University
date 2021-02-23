using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_home_event_calender
/// </summary>
public class Admin_home_event_calender
{
    dbconnection x = new dbconnection();
	public Admin_home_event_calender()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_home_event_calender_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}