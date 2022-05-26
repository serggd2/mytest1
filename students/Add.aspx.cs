using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class students_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        ddlsid.DataSource = SqlHelper.ExecuteforDataSet("select sid,sname from special");
            ddlsid.DataTextField = "sname";
            ddlsid.DataValueField = "sid";
            ddlsid.DataBind();

ddlcid.DataSource = SqlHelper.ExecuteforDataSet("select cid,cname from classess"+ " where sid="+ddlsid.SelectedValue);
            ddlcid.DataTextField = "cname";
            ddlcid.DataValueField = "cid";
            ddlcid.DataBind();


        }
    }

    /// <summary>
    /// 添加学生
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
        //验证是否已经存在
        if (SqlHelper.GetCount("select count(*) from students where sno='" + txt_sno.Text + "' ") > 0)
        {
            MessageBox.Show(this, "该学号已存在，请重新输入！");
            return;
        }

               string addrpic ="";
        if (fppic.HasFile)
        {
            string name = this.fppic.PostedFile.FileName;
            int i = name.LastIndexOf('.');
            string extname = name.Substring(i);
            string filename = DateTime.Now.ToString("yyyyMMddhhmmssfff");
            string path =  filename + extname;
            string savePath = Server.MapPath(@"..\uploads\" + filename + extname);
            fppic.PostedFile.SaveAs(savePath);
            addrpic = path;
        }




       //设置添加sql
       string strSql=String.Format(@"insert into students(sno,pass,stname,sex,pic,sid,cid,tel,email,qq,address,rtime)
                                values ('{0}','{1}','{2}','{3}','{4}',{5},{6},'{7}','{8}','{9}','{10}','{11}')",
                                txt_sno.Text,txt_pass.Text,txt_stname.Text,rtsex.SelectedValue,addrpic,ddlsid.SelectedValue,ddlcid.SelectedValue,txt_tel.Text,txt_email.Text,txt_qq.Text,txt_address.Text,DateTime.Now);
        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());


        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }


    protected void ddlsid_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlcid.DataSource = SqlHelper.ExecuteforDataSet("select cid,cname from classess"+ " where sid="+ddlsid.SelectedValue);
            ddlcid.DataTextField = "cname";
            ddlcid.DataValueField = "cid";
            ddlcid.DataBind();

    }

}

