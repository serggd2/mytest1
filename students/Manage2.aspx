<%@ Page Title="" Language="C#" MasterPageFile="~/m.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="Manage2.aspx.cs" Inherits="students_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="page-wrap">
				<section class="page-hd">
					<header>
						<h2 class="title">学生信息查询</h2>
						
					</header>
					<hr>
				</section>
				
	
				<table class="auto-style1">
                       
                    <tr><td valign="top">

                            <table style="width:100%;">
    <tr>
        <td align="center">
        <strong> 所属专业</strong><asp:DropDownList ID="ddlsid" runat="server" Width="150" AutoPostBack="True" OnSelectedIndexChanged="ddlsid_SelectedIndexChanged">
</asp:DropDownList><strong> 所属班级</strong><asp:DropDownList ID="ddlcid" runat="server" Width="150">
</asp:DropDownList>    <strong> 学号:</strong><asp:TextBox ID="txt_sno" runat="server" width="150"></asp:TextBox>
<strong> 姓名:</strong><asp:TextBox ID="txt_stname" runat="server" width="150"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="查 找"  class="btn btn-info-outline"  onclick="btnSearch_Click" />

        </td>
    </tr>
    <tr>
        <td>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle Height="25px" HorizontalAlign="Center" />
        <Columns>       
            <asp:BoundField HeaderText="学号" DataField="sno" />
            <asp:BoundField HeaderText="姓名" DataField="stname" />
            <asp:BoundField HeaderText="性别" DataField="sex" />
            <asp:TemplateField HeaderText="个人照片">
            <ItemTemplate>
            <img alt="" src="../uploads/<%#Eval("pic")%>" width="80"  height="80" />
            </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="所属专业" DataField="sname" />
            <asp:BoundField HeaderText="所属班级" DataField="cname" />
            <asp:BoundField HeaderText="手机号码" DataField="tel" />
            <asp:BoundField HeaderText="注册时间" DataField="rtime" />
            <asp:TemplateField HeaderText="操作">
            <ItemTemplate>
<input id="btnShow" type="button" value="详情"  onclick="location.href = 'View.aspx?id=<%#Eval("sno") %>'; "  class="btn btn-info-outline" />

            </ItemTemplate>
             <ItemStyle Width="70px" />
            </asp:TemplateField>
        </Columns>
        <PagerStyle HorizontalAlign="Center" />
    </asp:GridView>

            
            
        </td>
    </tr>
                                <tr>                    
<td align="center">
       共计：
                   
 
       <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="Red"></asp:Label>
&nbsp;个学生</td>
</tr>

                        <tr>                    
<td align="center">
      
    <input id="Button21" type="button" value="打印报表" class="btn btn-info-outline" onclick="window.print();" />
</td>
</tr>
</table>

                        </td></tr>
                    </table>
			</div>
     
</asp:Content>


