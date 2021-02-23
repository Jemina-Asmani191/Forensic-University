using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_behavioral_program
/// </summary>
public class Admin_behavioral_program
{
    dbconnection x = new dbconnection();
	public Admin_behavioral_program()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_behavioral_program_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}