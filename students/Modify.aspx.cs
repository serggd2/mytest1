using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class students_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化学生
            chushi();
        }
    }

    /// <summary>
    /// 初始化学生
    /// </summary>
    protected void chushi()
    {

        string strSql = string.Format("select * from students where  sno='{0}'", Request.QueryString["id"]);

        //根据编号得到相应的记录
        DataSet ds = SqlHelper.ExecuteforDataSet(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_sno.Text = ds.Tables[0].Rows[0]["sno"].ToString();
            txt_pass.Text = ds.Tables[0].Rows[0]["pass"].ToString();
            txt_stname.Text = ds.Tables[0].Rows[0]["stname"].ToString();
            rtsex.SelectedValue=ds.Tables[0].Rows[0]["sex"].ToString();
            Labelpic.Text = ds.Tables[0].Rows[0]["pic"].ToString();
            if (Labelpic.Text != "" && Labelpic.Text.Length > 3)
            {
               Imagepic.ImageUrl = "../uploads/" + Labelpic.Text;
               Imagepic.Visible = true;
             }
ddlsid.DataSource = SqlHelper.ExecuteforDataSet("select sid,sname from special");
            ddlsid.DataTextField = "sname";
            ddlsid.DataValueField = "sid";
            ddlsid.DataBind();

            ddlsid.SelectedValue=ds.Tables[0].Rows[0]["sid"].ToString();
ddlcid.DataSource = SqlHelper.ExecuteforDataSet("select cid,cname from classess"+ " where sid="+ddlsid.SelectedValue);
            ddlcid.DataTextField = "cname";
            ddlcid.DataValueField = "cid";
            ddlcid.DataBind();

            ddlcid.SelectedValue=ds.Tables[0].Rows[0]["cid"].ToString();
            txt_tel.Text = ds.Tables[0].Rows[0]["tel"].ToString();
            txt_email.Text = ds.Tables[0].Rows[0]["email"].ToString();
            txt_qq.Text = ds.Tables[0].Rows[0]["qq"].ToString();
            txt_address.Text = ds.Tables[0].Rows[0]["address"].ToString();
        }
    }

    /// <summary>
    /// 编辑学生
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   

        string addrpic =Labelpic.Text;
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

        string strSql=String.Format(@"update students set 
                                    sno = '{0}',pass = '{1}',stname = '{2}',sex = '{3}',pic = '{4}',sid = {5},cid = {6},tel = '{7}',email = '{8}',qq = '{9}',address = '{10}'
                                    where sno='{11}'",
        txt_sno.Text,txt_pass.Text,txt_stname.Text,rtsex.SelectedValue,addrpic,ddlsid.SelectedValue,ddlcid.SelectedValue,txt_tel.Text,txt_email.Text,txt_qq.Text,txt_address.Text,Request.QueryString["id"]);

        //提交到数据库
        SqlHelper.ExecuteNonQuery(strSql.ToString());

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Manage.aspx");
    }



    protected void ddlsid_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlcid.DataSource = SqlHelper.ExecuteforDataSet("select cid,cname from classess"+ " where sid="+ddlsid.SelectedValue);
            ddlcid.DataTextField = "cname";
            ddlcid.DataValueField = "cid";
            ddlcid.DataBind();

    }

}

