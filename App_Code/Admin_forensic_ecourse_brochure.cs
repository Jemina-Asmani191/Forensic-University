using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_forensic_ecourse_brochure
/// </summary>
public class Admin_forensic_ecourse_brochure
{
    dbconnection x = new dbconnection();
	public Admin_forensic_ecourse_brochure()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_forensic_ecourse_brochure_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}