<%@ Page Title="" Language="C#" MasterPageFile="~/m.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="Modify.aspx.cs" Inherits="classess_Edit" %>
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
						<h2 class="title">编辑班级信息</h2>
						
					</header>
					<hr>
				</section>
				
	
				<table class="auto-style1">
                       
                    <tr><td valign="top">

                            <table style="width:100%;">
    <tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>所属专业:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:DropDownList ID="ddlsid" runat="server" Width="200">
</asp:DropDownList> </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>班级名称:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_cname" runat="server" width="200" valType="required" msg="<font color =red>*</font>必填"></asp:TextBox>
</div> 
 </td></tr>



    <tr>
        <td>&nbsp;</td>
        <td align="left">
            <asp:Button ID="btnUpdate" runat="server" Text="提 交"  class="btn btn-info-outline" OnClick="btnSave_Click" />
            <asp:Button ID="btnCan" runat="server" Text="返 回"  class="btn btn-warning-outline" OnClientClick="document.location='Manage.aspx';return false;" CausesValidation="false" />
        </td>
    </tr>
</table>

                        </td></tr>
                    </table>
			</div>
     
</asp:Content>


