using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_Advisory_Committee
/// </summary>
public class Admin_Advisory_Committee
{
    dbconnection x = new dbconnection();
	public Admin_Advisory_Committee()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_advisory_committee_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}