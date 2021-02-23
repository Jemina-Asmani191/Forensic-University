using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_contactus
/// </summary>
public class Admin_contactus
{
    dbconnection x = new dbconnection();
	public Admin_contactus()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_contactus_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}