using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_admission_course
/// </summary>
public class Admin_admission_course
{
    dbconnection x = new dbconnection();
	public Admin_admission_course()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_admission_course_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}