﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_university_officer
/// </summary>
public class Admin_university_officer
{
    dbconnection x = new dbconnection();
	public Admin_university_officer()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_university_officer_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }

}