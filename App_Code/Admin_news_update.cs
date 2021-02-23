using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_News_Update
/// </summary>
public class Admin_News_Update
{
    dbconnection x = new dbconnection();
	public Admin_News_Update()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_news_update_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}