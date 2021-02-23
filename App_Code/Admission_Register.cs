using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Admission_Register
/// </summary>
public class Admission_Register
{
    dbconnection x = new dbconnection();
	public Admission_Register()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admission_register_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
    public void admission_register_update(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }

}