using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_director_general
/// </summary>
public class Admin_director_general
{
    dbconnection x = new dbconnection();
	public Admin_director_general()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_director_general_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}