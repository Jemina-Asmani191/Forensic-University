using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_NAAC_accreditation
/// </summary>
public class Admin_NAAC_accreditation
{
    dbconnection x = new dbconnection();
	public Admin_NAAC_accreditation()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_NAAC_accreditation_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}