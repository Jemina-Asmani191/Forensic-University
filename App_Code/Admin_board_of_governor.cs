using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


/// <summary>
/// Summary description for Admin_board_of_governor
/// </summary>
public class Admin_board_of_governor
{
    dbconnection x = new dbconnection();
	public Admin_board_of_governor()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_board_of_governor_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}