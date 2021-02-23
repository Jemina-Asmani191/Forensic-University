using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admission_Change_Password
/// </summary>
public class Admission_Change_Password
{
    dbconnection x = new dbconnection();
	public Admission_Change_Password()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admission_change_passowrd_update(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}