  using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class students_List : System.Web.UI.Page
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

        ddlcid.Items.Insert(0, new ListItem("所有", ""));


            bind();
        }
    }

    /// <summary>
    /// 绑定学生
    /// </summary>
    private void bind()
    {       
        string where = " where 1=1 ";

        if (txt_sno.Text != "")
        {
            where += " and sno like '%" + txt_sno.Text + "%' ";
        }

        if (txt_stname.Text != "")
        {
            where += " and stname like '%" + txt_stname.Text + "%' ";
        }

        if (ddlsid.SelectedValue!= "")
        {
            where += " and a.sid=" + ddlsid.SelectedValue + "";
        }

        if (ddlcid.SelectedValue!= "")
        {
            where += " and a.cid=" + ddlcid.SelectedValue + "";
        }



        GridView1.DataSource = SqlHelper.ExecuteforDataSet("select a.*,b.sname,c.cname from students a  left join special b on a.sid=b.sid left join classess c on a.cid=c.cid " + where + " order by sno desc");
        GridView1.DataBind();


        Label1.Text = GridView1.Rows.Count.ToString();
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
    /// 删除学生
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
     protected void btnDele_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;

        //设置删除sql
        string strSql = string.Format("delete from  students where sno='{0}'", btn.CommandName);

        //删除相应的记录
        SqlHelper.ExecuteNonQuery(strSql);

        //重新绑定数据源
        bind();
    }


    protected void ddlsid_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlcid.Items.Clear();
        if (ddlsid.SelectedValue != "")
        {
            ddlcid.DataSource = SqlHelper.ExecuteforDataSet("select cid,cname from classess"+ " where sid="+ddlsid.SelectedValue);
            ddlcid.DataTextField = "cname";
            ddlcid.DataValueField = "cid";
            ddlcid.DataBind();

        }
        ddlcid.Items.Insert(0, new ListItem("所有", ""));        
    }

}

