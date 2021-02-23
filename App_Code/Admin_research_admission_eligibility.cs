using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_research_admission_eligibility
/// </summary>
public class Admin_research_admission_eligibility
{
    dbconnection x = new dbconnection();
	public Admin_research_admission_eligibility()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_research_admission_eligibility_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}