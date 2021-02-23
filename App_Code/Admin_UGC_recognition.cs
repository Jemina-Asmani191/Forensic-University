using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_UGC_recognition
/// </summary>
public class Admin_UGC_recognition
{
    dbconnection x = new dbconnection();
	public Admin_UGC_recognition()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_UGC_recognition_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}