using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_student_placement
/// </summary>
public class Admin_student_placement
{
    dbconnection x = new dbconnection();
	public Admin_student_placement()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_student_placement_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}