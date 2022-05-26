using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class admin_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
        }
    }

    /// <summary>
    /// 添加管理员
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
        //验证是否已经存在
        if (SqlHelper.GetCount("select count(*) from admin where lname='" + txt_lname.Text + "' ") > 0)
        {
            MessageBox.Show(this, "该登录名已存在，请重新输入！");
            return;
        }

       
       //设置添加sql
       string strSql=String.Format(@"insert into admin(lname,pwd,flag)
                                values ('{0}','{1}',{2})",
                                txt_lname.Text,txt_pwd.Text,0);
        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());


        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }

    
}

