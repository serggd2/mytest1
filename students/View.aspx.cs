using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class students_Show : System.Web.UI.Page
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
    ///</summary>
    protected void chushi()
    {
        //判断url传递的id是否为null
        if (Request.QueryString["id"] != null)
        {

            string sql="";
            sql="select a.*,b.sname,c.cname from students a  left join special b on a.sid=b.sid left join classess c on a.cid=c.cid where sno='"+ Request.QueryString["id"]+"'";
            //根据编号得到相应的记录
            SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
            if (sdr.Read())
            {
                lblsno.Text = sdr["sno"].ToString();
                lblpass.Text = sdr["pass"].ToString();
                lblstname.Text = sdr["stname"].ToString();
                lblsex.Text = sdr["sex"].ToString();
                if (sdr["pic"].ToString() != "" && sdr["pic"].ToString().Length > 3)
                {
                    imgpic.ImageUrl = "../uploads/" + sdr["pic"].ToString();
                }
                lblsid.Text = sdr["sname"].ToString();
                lblcid.Text = sdr["cname"].ToString();
                lbltel.Text = sdr["tel"].ToString();
                lblemail.Text = sdr["email"].ToString();
                lblqq.Text = sdr["qq"].ToString();
                lbladdress.Text = sdr["address"].ToString();
                lblrtime.Text = sdr["rtime"].ToString();
            }

        }
    }
}

