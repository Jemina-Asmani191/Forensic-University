using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_finance_committee
/// </summary>
public class Admin_finance_committee
{
    dbconnection x = new dbconnection();
	public Admin_finance_committee()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_finace_committee_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}