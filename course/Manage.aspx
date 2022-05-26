<%@ Page Title="" Language="C#" MasterPageFile="~/m.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="Manage.aspx.cs" Inherits="course_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="page-wrap">
				<section class="page-hd">
					<header>
						<h2 class="title">管理课程信息</h2>
						
					</header>
					<hr>
				</section>
				
	
				<table class="auto-style1">
                       
                    <tr><td valign="top">

                            <table style="width:100%;">
    <tr>
        <td align="center">
            <strong> 课程名称:</strong><asp:TextBox ID="txt_title" runat="server" width="150"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="查 找"  class="btn btn-info-outline"  onclick="btnSearch_Click" />

        </td>
    </tr>
    <tr>
        <td>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle Height="25px" HorizontalAlign="Center" />
        <Columns>       
            <asp:BoundField HeaderText="课程名称" DataField="title" />
            <asp:BoundField HeaderText="总课时" DataField="chour" />
            <asp:BoundField HeaderText="学分" DataField="score" />
            <asp:BoundField HeaderText="上课地点" DataField="address" />
            <asp:TemplateField HeaderText="课程描述">
            <ItemTemplate>
            <%# StringHelper.SubStringHtml( Eval("memo").ToString(),40) %>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
            <ItemTemplate>
<input id="btnShow" type="button" value="详情"  onclick="location.href = 'View.aspx?id=<%#Eval("cid") %>'; "  class="btn btn-info-outline" />
<input id="btnEdit" type="button" value="修改"  onclick="location.href = 'Modify.aspx?id=<%#Eval("cid") %>'; "  class="btn btn-info-outline" />
<asp:Button ID="btnDele" runat="server" Text="删除"  CausesValidation="False"   CommandName='<%#Eval("cid") %>'  OnClick="btnDele_Click"  class="btn btn-info-outline" />
            </ItemTemplate>
             <ItemStyle Width="210px" />
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


