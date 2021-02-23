using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_concerned_committee
/// </summary>
public class Admin_concerned_committee
{
    dbconnection x = new dbconnection();
	public Admin_concerned_committee()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_concerned_committee_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}