<%@ Page Title="" Language="C#" MasterPageFile="~/m.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="View.aspx.cs" Inherits="course_Show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="page-wrap">
				<section class="page-hd">
					<header>
						<h2 class="title">查看课程信息</h2>
						
					</header>
					<hr>
				</section>
				
	
				<table class="auto-style1">
                       
                    <tr><td valign="top">

                            <table style="width:100%;">
     <tr>
	<td height="25" width="20%" align="right">课程编号：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblcid" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">课程名称：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lbltitle" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">总课时：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblchour" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">学分：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblscore" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">上课地点：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lbladdress" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">课程描述：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblmemo" runat="server" Text=""></asp:Label></td>
	</tr>


    <tr>
        <td>&nbsp;</td>
        <td align="left">   

            <asp:Button ID="btnReturn" runat="server" Text="返回列表"  class="btn btn-warning-outline" OnClientClick="history.go(-1); return false;" CausesValidation="false" />
        </td>
    </tr>
</table>

                        </td></tr>
                    </table>
			</div>
     
</asp:Content>


