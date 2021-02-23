using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_SCST_grievance_redressal
/// </summary>
public class Admin_SCST_grievance_redressal
{
    dbconnection x = new dbconnection();
	public Admin_SCST_grievance_redressal()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_SCST_grievance_redressal_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}