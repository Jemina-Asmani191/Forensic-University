using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_virtual_tour
/// </summary>
public class Admin_virtual_tour
{
    dbconnection x = new dbconnection();
	public Admin_virtual_tour()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_virtual_tour_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}