using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_convocation
/// </summary>
public class Admin_convocation
{
     dbconnection x = new dbconnection();
	public Admin_convocation()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_convocation_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}