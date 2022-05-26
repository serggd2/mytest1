using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class course_Show : System.Web.UI.Page
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
    ///</summary>
    protected void chushi()
    {
        //判断url传递的id是否为null
        if (Request.QueryString["id"] != null)
        {

            string sql="";
            sql="select * from course where cid="+ Request.QueryString["id"];
            //根据编号得到相应的记录
            SqlDataReader sdr = SqlHelper.ExecuteReader(sql);
            if (sdr.Read())
            {
                lblcid.Text = sdr["cid"].ToString();
                lbltitle.Text = sdr["title"].ToString();
                lblchour.Text = sdr["chour"].ToString();
                lblscore.Text = sdr["score"].ToString();
                lbladdress.Text = sdr["address"].ToString();
                lblmemo.Text = sdr["memo"].ToString();
            }

        }
    }
}

