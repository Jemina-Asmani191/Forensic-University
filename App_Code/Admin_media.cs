using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_media
/// </summary>
public class Admin_media
{
    dbconnection x = new dbconnection();
	public Admin_media()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_media_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}