using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pagination;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class User_Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
    SqlDataAdapter dap = new SqlDataAdapter();
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    string qry;
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            ViewState["c"] = "0";
             databind();
        }
    }
    int currentpos=0;
   
    void databind()
    {
        currentpos = Convert.ToInt32(ViewState["c"].ToString());
        ds.Clear();
        qry = "select * from Admin_News_Update";
        dap = new SqlDataAdapter(qry, cn);
        dap.Fill(ds);
        dt = ds.Tables[0];
        PagedDataSource pg = new PagedDataSource();
        pg.AllowPaging = true;
        pg.DataSource = dt.DefaultView;
        pg.PageSize = 5;
        pg.CurrentPageIndex = currentpos ;
        rptnews_update.DataSource = pg;
        rptnews_update.DataBind();
    }

    protected void btnPageChange_Click(object sender, EventArgs e)
    {
        var btn = (LinkButton)sender;
        var item = (RepeaterItem)btn.NamingContainer;
        var iPage = (item.FindControl("hdValue") as HiddenField).Value;
        string url = HttpContext.Current.Request.Url.AbsoluteUri;
        if (url.IndexOf("?") > 0)
        {
            url = url.Substring(0, url.IndexOf("?"));
        }
        Response.Redirect(url + "?page=" + iPage);
    }

    protected void rpPaging_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        RepeaterItem item = e.Item;
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            var btn = (LinkButton)item.FindControl("btnPageChange");
            var hdValue = (HiddenField)item.FindControl("hdValue");
            if (hdValue.Value == "-1")
            {
                btn.Text = "...";
                btn.Enabled = false;
            }
        }
    }

    protected void btn_next_Click(object sender, EventArgs e)
    {
        currentpos = Convert.ToInt32(ViewState["c"].ToString());
        currentpos = currentpos + 1;
        ViewState["c"] = currentpos.ToString();
        databind();
    }
    protected void btn_prev_Click(object sender, EventArgs e)
    {
        currentpos = Convert.ToInt32(ViewState["c"].ToString());
        currentpos = currentpos - 1;
        ViewState["c"] = currentpos.ToString();
        databind();
    }
    
}