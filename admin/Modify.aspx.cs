using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class admin_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化管理员
            chushi();
        }
    }

    /// <summary>
    /// 初始化管理员
    /// </summary>
    protected void chushi()
    {

        string strSql = string.Format("select * from admin where  aid={0}", Request.QueryString["id"]);

        //根据编号得到相应的记录
        DataSet ds = SqlHelper.ExecuteforDataSet(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_lname.Text = ds.Tables[0].Rows[0]["lname"].ToString();
            txt_pwd.Text = ds.Tables[0].Rows[0]["pwd"].ToString();
        }
    }

    /// <summary>
    /// 编辑管理员
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   


        string strSql=String.Format(@"update admin set 
                                    lname = '{0}',pwd = '{1}'
                                    where aid={2}",
        txt_lname.Text,txt_pwd.Text,int.Parse(Request.QueryString["id"]));

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Manage.aspx");
    }



    
}

