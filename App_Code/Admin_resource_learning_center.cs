using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_resource_learning_center
/// </summary>
public class Admin_resource_learning_center
{
    dbconnection x = new dbconnection();
	public Admin_resource_learning_center()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_resource_learning_center_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}