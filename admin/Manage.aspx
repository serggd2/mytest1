<%@ Page Title="" Language="C#" MasterPageFile="~/m.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="Manage.aspx.cs" Inherits="admin_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="page-wrap">
				<section class="page-hd">
					<header>
						<h2 class="title">管理管理员信息</h2>
						
					</header>
					<hr>
				</section>
				
	
				<table class="auto-style1">
                       
                    <tr><td valign="top">

                            <table style="width:100%;">
    <tr>
        <td align="center">
            
        </td>
    </tr>
    <tr>
        <td>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle Height="25px" HorizontalAlign="Center" />
        <Columns>       
            <asp:BoundField HeaderText="登录名" DataField="lname" />
            <asp:BoundField HeaderText="密码" DataField="pwd" />
            <asp:TemplateField HeaderText="操作">
            <ItemTemplate>
<input id="btnEdit" type="button" value="修改"  onclick="location.href = 'Modify.aspx?id=<%#Eval("aid") %>'; "  class="btn btn-info-outline" />
<asp:Button ID="btnDele" runat="server" Text="删除"  CausesValidation="False"   CommandName='<%#Eval("aid") %>'  OnClick="btnDele_Click"  class="btn btn-info-outline" />
            </ItemTemplate>
             <ItemStyle Width="150px" />
            </asp:TemplateField>
        </Columns>
        <PagerStyle HorizontalAlign="Center" />
    </asp:GridView>

            
            
        </td>
    </tr>
</table>

                        </td></tr>
                    </table>
			</div>
     
</asp:Content>


