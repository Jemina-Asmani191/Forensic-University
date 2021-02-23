using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_result
/// </summary>
public class Admin_result
{
    dbconnection x = new dbconnection();
	public Admin_result()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_result_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}