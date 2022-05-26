<%@ Page Title="" Language="C#" MasterPageFile="~/m.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="adminpass.aspx.cs" Inherits="admin_pass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <script type="text/javascript"  src="../vali/jquery.min.js"></script>
<script type="text/javascript" src="../vali/jquery.poshytip.js"></script>
<script type='text/javascript' src='../vali/jq.validate.js'></script>
<link rel="stylesheet" type="text/css" href="../vali/reset.css" />
<link rel="stylesheet" type="text/css" href="../vali/tip-yellowsimple/tip-yellowsimple.css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="page-wrap">
				<section class="page-hd">
					<header>
						<h2 class="title">修改登录密码</h2>
						
					</header>
					<hr>
				</section>
				
	
				<table class="auto-style1">
                       
                    <tr><td valign="top">

                            <table style="width:100%;">
    <tr>
        <td align="right">
            用户名
        </td>
        <td align="left">
            <b style="color:red;"><%=Session["aname"].ToString() %></b>
        </td>
    </tr>
    <tr>
    <td  style=" text-align:right; width:30%;">原密码:</td>
        <td class="tbright"><asp:TextBox ID="txt_pwd" runat="server" TextMode="Password" valType="required" msg="<font color =red>*</font>请输入原密码"></asp:TextBox> </td>
    </tr>
    <tr>
        <td  style=" text-align:right; width:30%;">新密码:</td>
        <td class="tbright"><asp:TextBox ID="TextBox1" runat="server" TextMode="Password" valType="required" msg="<font color =red>*</font>请输入新密码"></asp:TextBox></td>
    </tr>
        <tr>
        <td  style=" text-align:right; width:30%;">确认密码:</td>
        <td class="tbright"><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" valType="required" msg="<font color =red>*</font>请输入确认密码"></asp:TextBox></td>
    </tr>

    <tr>
        <td>&nbsp;</td>
        <td align="left">
            <asp:Button ID="Button2" runat="server" Text="提 交"  class="btn btn-info-outline" OnClick="btnSave_Click"  />
        </td>
    </tr>
</table>

                        </td></tr>
                    </table>
			</div>
     
</asp:Content>


