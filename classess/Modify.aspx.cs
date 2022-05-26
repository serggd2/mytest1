using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class classess_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化班级
            chushi();
        }
    }

    /// <summary>
    /// 初始化班级
    /// </summary>
    protected void chushi()
    {
ddlsid.DataSource = SqlHelper.ExecuteforDataSet("select sid,sname from special");
            ddlsid.DataTextField = "sname";
            ddlsid.DataValueField = "sid";
            ddlsid.DataBind();


        string strSql = string.Format("select * from classess where  cid={0}", Request.QueryString["id"]);

        //根据编号得到相应的记录
        DataSet ds = SqlHelper.ExecuteforDataSet(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            ddlsid.SelectedValue=ds.Tables[0].Rows[0]["sid"].ToString();
            txt_cname.Text = ds.Tables[0].Rows[0]["cname"].ToString();
        }
    }

    /// <summary>
    /// 编辑班级
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   


        string strSql=String.Format(@"update classess set 
                                    sid = {0},cname = '{1}'
                                    where cid='{2}'",
        ddlsid.SelectedValue,txt_cname.Text,int.Parse(Request.QueryString["id"]));

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Manage.aspx");
    }



    
}

