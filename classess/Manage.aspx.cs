  using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class classess_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
ddlsid.DataSource = SqlHelper.ExecuteforDataSet("select sid,sname from special");
            ddlsid.DataTextField = "sname";
            ddlsid.DataValueField = "sid";
            ddlsid.DataBind();

        ddlsid.Items.Insert(0, new ListItem("所有", ""));


            bind();
        }
    }

    /// <summary>
    /// 绑定班级
    /// </summary>
    private void bind()
    {       
        string where = " where 1=1 ";

        if (ddlsid.SelectedValue!= "")
        {
            where += " and a.sid=" + ddlsid.SelectedValue + "";
        }



        GridView1.DataSource = SqlHelper.ExecuteforDataSet("select a.*,b.sname from classess a  left join special b on a.sid=b.sid " + where);
        GridView1.DataBind();

    }

    /// <summary>
    /// 分页事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
   
    /// <summary>
    /// 搜索
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        bind();
    }
    
    /// <summary>
    /// 删除班级
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
     protected void btnDele_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;

        //设置删除sql
        string strSql = string.Format("delete from  classess where cid={0}", btn.CommandName);

        //删除相应的记录
        SqlHelper.ExecuteNonQuery(strSql);

        //重新绑定数据源
        bind();
    }




}

