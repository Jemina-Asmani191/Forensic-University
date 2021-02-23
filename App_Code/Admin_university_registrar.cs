using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_university_registrar
/// </summary>
public class Admin_university_registrar
{
    dbconnection x = new dbconnection();
	public Admin_university_registrar()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_registrar_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}