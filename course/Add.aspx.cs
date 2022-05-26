using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class course_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
        }
    }

    /// <summary>
    /// 添加课程
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
       
       //设置添加sql
       string strSql=String.Format(@"insert into course(title,chour,score,address,memo)
                                values ('{0}','{1}','{2}','{3}','{4}')",
                                txt_title.Text,txt_chour.Text,txt_score.Text,txt_address.Text,txt_memo.Text);
        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());


        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }

    
}

