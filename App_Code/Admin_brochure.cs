﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_brochure
/// </summary>
public class Admin_brochure
{
    dbconnection x = new dbconnection();
	public Admin_brochure()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_brochure_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}