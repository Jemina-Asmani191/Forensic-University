using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_students_achievement
/// </summary>
public class Admin_students_achievement
{
    dbconnection x = new dbconnection();
	public Admin_students_achievement()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_achievement_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}