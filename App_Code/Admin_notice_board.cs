using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Admin_notice_board
/// </summary>
public class Admin_notice_board
{
    dbconnection x = new dbconnection();
	public Admin_notice_board()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void admin_notice_board_insert(string qry)
    {
        x.conopen();
        x.cmd = new SqlCommand(qry, x.cn);
        x.cmd.ExecuteNonQuery();
        x.conclose();
    }
}