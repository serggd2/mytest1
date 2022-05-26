<%@ Page Title="" Language="C#" MasterPageFile="~/m.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="Add.aspx.cs" Inherits="students_Add" %>
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
						<h2 class="title">添加学生信息</h2>
						
					</header>
					<hr>
				</section>
				
	
				<table class="auto-style1">
                       
                    <tr><td valign="top">

                            <table style="width:100%;">
    <tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>学号:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_sno" runat="server" width="200" valType="required" msg="<font color =red>*</font>必填"></asp:TextBox>
</div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>登录密码:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_pass" runat="server" width="200" valType="required" msg="<font color =red>*</font>必填">123456</asp:TextBox>
</div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>姓名:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_stname" runat="server" width="200" valType="required" msg="<font color =red>*</font>必填"></asp:TextBox>
</div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>性别:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:RadioButtonList ID="rtsex" runat="server" RepeatDirection="Horizontal">
    <asp:ListItem Selected="True">男</asp:ListItem>
    <asp:ListItem>女</asp:ListItem>
</asp:RadioButtonList>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>个人照片:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:FileUpload ID="fppic" runat="server" Width="250" />支持格式为：.jpg | .gif | .png
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>所属专业:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:DropDownList ID="ddlsid" runat="server" Width="200" AutoPostBack="True" OnSelectedIndexChanged="ddlsid_SelectedIndexChanged">
</asp:DropDownList> </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>所属班级:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:DropDownList ID="ddlcid" runat="server" Width="200">
</asp:DropDownList> </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>手机号码:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_tel" runat="server" width="200" valType="required" msg="<font color =red>*</font>必填"></asp:TextBox>
</div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>电子邮箱:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_email" runat="server" width="200" valType="required" msg="<font color =red>*</font>必填"></asp:TextBox>
</div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;">QQ:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_qq" runat="server" width="200"></asp:TextBox>
</div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;">家庭住址:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_address" runat="server" width="200"></asp:TextBox>
</div> 
 </td></tr>



    <tr>
        <td>&nbsp;</td>
        <td align="left">
            <asp:Button ID="btnAdd" runat="server" Text="提 交"  class="btn btn-info-outline" OnClick="btnSave_Click"  />
            <asp:Button ID="btnCan" runat="server" Text="返 回"  class="btn btn-warning-outline" OnClientClick="document.location='Manage.aspx';return false;" CausesValidation="false" />
        </td>
    </tr>
</table>

                        </td></tr>
                    </table>
			</div>
     
</asp:Content>


