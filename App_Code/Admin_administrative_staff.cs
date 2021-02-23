using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_administrative_staff
/// </summary>
public class Admin_administrative_staff
{
    dbconnection x = new dbconnection();
	public Admin_administrative_staff()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_administrative_staff_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}