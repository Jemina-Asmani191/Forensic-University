using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_research_center
/// </summary>
public class Admin_research_center
{
    dbconnection x = new dbconnection();
	public Admin_research_center()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_research_center_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}