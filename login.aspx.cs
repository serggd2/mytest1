using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "";

        //验证输入
        if (adminName.Value == "")
        {
            str = "用户名不能为空！";
        }

        else if (adminPwd.Value == "")
        {
            str = "密码不能为空！";
        }
        else
        {
            if(DropDownList1.SelectedValue=="管理员")
            {
                  DataSet ds = SqlHelper.ExecuteforDataSet("select * from admin where lname='" + adminName.Value + "' and pwd='" + adminPwd.Value + "'");

            //判断用户名和密码是否正确
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow dr = ds.Tables[0].Rows[0];

                //把登录信息存到Session中
                Session["aid"] = dr["lname"].ToString();
                Session["aname"] = dr["lname"].ToString();
                Session["arole"] =dr["flag"].ToString()=="1"?"超级管理员": "管理员";
                  

                //跳转到后台
                Response.Redirect("Default.aspx");
            }
            else
            {
                MessageBox.Show(this, "请输入正确的用户名或密码");
                return;
            }
            }
            else if(DropDownList1.SelectedValue=="学生")
            {
                  DataSet ds = SqlHelper.ExecuteforDataSet("select * from students where sno='" + adminName.Value + "' and pass='" + adminPwd.Value + "'");

            //判断用户名和密码是否正确
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow dr = ds.Tables[0].Rows[0];

                //把登录信息存到Session中
                Session["aid"] = dr["sno"].ToString();
                Session["aname"] = dr["stname"].ToString();
                Session["arole"] = "学生";
                  

                //跳转到后台
                Response.Redirect("Default.aspx");
            }
            else
            {
                MessageBox.Show(this, "请输入正确的用户名或密码");
                return;
            }
            }

        }

        //弹出提示信息
        MessageBox.Show(this, "请输入正确的用户名或密码");
    }
}
