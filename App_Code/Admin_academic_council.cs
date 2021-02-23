using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_academic_council
/// </summary>
public class Admin_academic_council
{
    dbconnection x = new dbconnection();
	public Admin_academic_council()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_academic_council_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}