using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_NIRF
/// </summary>
public class Admin_NIRF
{
    dbconnection x = new dbconnection();
	public Admin_NIRF()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_NIRF_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}