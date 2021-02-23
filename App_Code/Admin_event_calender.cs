using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_event_calender
/// </summary>
public class Admin_event_calender
{
    dbconnection x = new dbconnection();
	public Admin_event_calender()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_event_calendar_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}