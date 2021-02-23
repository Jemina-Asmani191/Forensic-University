using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_Forensic_ECourse
/// </summary>
public class Admin_Forensic_ECourse
{
    dbconnection x = new dbconnection();
	public Admin_Forensic_ECourse()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_forensic_ECourse_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}