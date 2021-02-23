using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_honorary_advisory
/// </summary>
public class Admin_honorary_advisory
{
    dbconnection x = new dbconnection();
	public Admin_honorary_advisory()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_honorary_advisory_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}