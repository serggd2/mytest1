using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class classess_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        ddlsid.DataSource = SqlHelper.ExecuteforDataSet("select sid,sname from special");
            ddlsid.DataTextField = "sname";
            ddlsid.DataValueField = "sid";
            ddlsid.DataBind();


        }
    }

    /// <summary>
    /// 添加班级
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
       
       //设置添加sql
       string strSql=String.Format(@"insert into classess(sid,cname)
                                values ({0},'{1}')",
                                ddlsid.SelectedValue,txt_cname.Text);
        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());


        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }

    
}

