using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class course_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化课程
            chushi();
        }
    }

    /// <summary>
    /// 初始化课程
    /// </summary>
    protected void chushi()
    {

        string strSql = string.Format("select * from course where  cid={0}", Request.QueryString["id"]);

        //根据编号得到相应的记录
        DataSet ds = SqlHelper.ExecuteforDataSet(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_title.Text = ds.Tables[0].Rows[0]["title"].ToString();
            txt_chour.Text = ds.Tables[0].Rows[0]["chour"].ToString();
            txt_score.Text = ds.Tables[0].Rows[0]["score"].ToString();
            txt_address.Text = ds.Tables[0].Rows[0]["address"].ToString();
            txt_memo.Text = ds.Tables[0].Rows[0]["memo"].ToString();
        }
    }

    /// <summary>
    /// 编辑课程
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   


        string strSql=String.Format(@"update course set 
                                    title = '{0}',chour = '{1}',score = '{2}',address = '{3}',memo = '{4}'
                                    where cid='{5}'",
        txt_title.Text,txt_chour.Text,txt_score.Text,txt_address.Text,txt_memo.Text,int.Parse(Request.QueryString["id"]));

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Manage.aspx");
    }



    
}

