﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_Visitors
/// </summary>
public class Admin_Visitors
{
    dbconnection x = new dbconnection();
	public Admin_Visitors()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_visitors_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}