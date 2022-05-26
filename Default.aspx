<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>学生信息管理系统</title>
    <meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<link rel="stylesheet" type="text/css" href="image/css/style.css" />
<script src="image/js/jquery.js"></script>
<script src="image/js/customScrollbar.min.js"></script>
<script src="image/js/echarts.min.js"></script>
    <script src="image/js/plug-ins/layerUi/layer.js"></script>
<script src="image/js/ueditor.config.js"></script>
<script src="image/js/ueditor.all.js"></script>
<script src="image/js/pagination.js"></script>
<script src="image/js/public.js"></script>
</head>
<body>
    <form id="form1" runat="server">
   <div class="main-wrap">
	<div class="side-nav">
		<div class="side-logo">
			<div class="logo">
				<span class="logo-ico">
					<i class="i-l-1"></i>
					<i class="i-l-2"></i>
					<i class="i-l-3"></i>
				</span>
				<strong>学生信息管理系统</strong>
			</div>
		</div>
		
		<nav class="side-menu content mCustomScrollbar" data-mcs-theme="minimal-dark">
			<h2>
				<a href="#" class="InitialPage"><i class="icon-dashboard"></i>菜单列表</a>
			</h2>
			<ul>
				    <% if (Session["arole"] != null)
     { %>
    <% if (Session["arole"].ToString() == "超级管理员")
        { %>
        

				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>专业管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="special/Add.aspx" target="right">添加专业信息</a>
						</dd>
						<dd>
							<a href="special/Manage.aspx" target="right">管理专业信息</a>
						</dd>
					</dl>
				</li>


				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>班级管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="classess/Add.aspx" target="right">添加班级信息</a>
						</dd>
						<dd>
							<a href="classess/Manage.aspx" target="right">管理班级信息</a>
						</dd>
					</dl>
				</li>

                
				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>学生管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="students/Add.aspx" target="right">添加学生信息</a>
						</dd>
						<dd>
							<a href="students/Manage.aspx" target="right">管理学生信息</a>
						</dd>
					</dl>
				</li>



				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>课程管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="course/Add.aspx" target="right">添加课程信息</a>
						</dd>
						<dd>
							<a href="course/Manage.aspx" target="right">管理课程信息</a>
						</dd>
					</dl>
				</li>


				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>成绩管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="scores/Add.aspx" target="right">添加成绩信息</a>
						</dd>
						<dd>
							<a href="scores/Manage.aspx" target="right">管理成绩信息</a>
						</dd>
					</dl>
				</li>


				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>奖惩管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="rewards/Add.aspx" target="right">添加奖惩信息</a>
						</dd>
						<dd>
							<a href="rewards/Manage.aspx" target="right">管理奖惩信息</a>
						</dd>
					</dl>
				</li>


                
				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>统计查询<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="students/Manage2.aspx" target="right">学生信息查询</a>
						</dd>
						<dd>
							<a href="scores/Manage2.aspx" target="right">学生成绩查询</a>
						</dd>
					</dl>
				</li>


				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>系统管理<i class="icon-angle-right"></i>
						</dt>
                        	<dd>
							<a href="admin/Add.aspx" target="right">添加管理员信息</a>
						</dd>
						<dd>
							<a href="admin/Manage.aspx" target="right">管理管理员信息</a>
						</dd>
						<dd>
							<a href="system/adminpass.aspx" target="right">修改登录密码</a>
						</dd>
					</dl>
				</li>

    <%} %>
    

                   <% if (Session["arole"].ToString() == "管理员")
        { %>
        

				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>专业管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="special/Add.aspx" target="right">添加专业信息</a>
						</dd>
						<dd>
							<a href="special/Manage.aspx" target="right">管理专业信息</a>
						</dd>
					</dl>
				</li>


				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>班级管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="classess/Add.aspx" target="right">添加班级信息</a>
						</dd>
						<dd>
							<a href="classess/Manage.aspx" target="right">管理班级信息</a>
						</dd>
					</dl>
				</li>

                
				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>学生管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="students/Add.aspx" target="right">添加学生信息</a>
						</dd>
						<dd>
							<a href="students/Manage.aspx" target="right">管理学生信息</a>
						</dd>
					</dl>
				</li>



				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>课程管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="course/Add.aspx" target="right">添加课程信息</a>
						</dd>
						<dd>
							<a href="course/Manage.aspx" target="right">管理课程信息</a>
						</dd>
					</dl>
				</li>


				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>成绩管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="scores/Add.aspx" target="right">添加成绩信息</a>
						</dd>
						<dd>
							<a href="scores/Manage.aspx" target="right">管理成绩信息</a>
						</dd>
					</dl>
				</li>


				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>奖惩管理<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="rewards/Add.aspx" target="right">添加奖惩信息</a>
						</dd>
						<dd>
							<a href="rewards/Manage.aspx" target="right">管理奖惩信息</a>
						</dd>
					</dl>
				</li>


                
				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>统计查询<i class="icon-angle-right"></i>
						</dt>
						<dd>
							<a href="students/Manage2.aspx" target="right">学生信息查询</a>
						</dd>
						<dd>
							<a href="scores/Manage2.aspx" target="right">学生成绩查询</a>
						</dd>
					</dl>
				</li>


				<li>
					<dl>
						<dt>
							<i class="icon-columns"></i>系统管理<i class="icon-angle-right"></i>
						</dt>
                   
						<dd>
							<a href="system/adminpass.aspx" target="right">修改登录密码</a>
						</dd>
					</dl>
				</li>

    <%} %>

    <%  if (Session["arole"].ToString() == "学生")
        { %>

				<li class="open">
					<dl>


						<dt>
							<i class="icon-columns"></i>菜单列表<i class="icon-angle-right"></i>
						</dt>

                        	<dd>
							<a href="students/info.aspx" target="right">修改个人信息</a>
						</dd>

                        	<dd>
							<a href="scores/Manage3.aspx" target="right">我的成绩信息</a>
						</dd>

                        <dd>
							<a href="rewards/Manage2.aspx" target="right">我的奖惩信息</a>
						</dd>

					
						<dd>
							<a href="system/studentspass.aspx" target="right">修改登录密码</a>
						</dd>
					</dl>
				</li>

    <%} %>
    
    <%} %>

		
			</ul>
		</nav>
		<footer class="side-footer"></footer>
	</div>
	<div class="content-wrap">
		<header class="top-hd">
			<div class="hd-lt">
				<a class="icon-reorder"></a>
			</div>
			<div class="hd-rt">
				<ul>
					<li>
						
					</li>
				
					<li>
						<a><i class="icon-user"></i><asp:Literal ID="lt2" runat="server"></asp:Literal>:<em><asp:Literal ID="lt1" runat="server"></asp:Literal></em></a>
					</li>
					
					<li>
						<a href="javascript:void(0)" id="JsSignOut"><i class="icon-signout"></i>安全退出</a>
					</li>
				</ul>
			</div>
		</header>
		<main class="main-cont content mCustomScrollbar" style="height:100%">
			<!--开始::内容-->
	
			
			
			      <iframe scrolling="auto"  frameborder="0" src="main.aspx" name="right" width="100%" height="100%"></iframe>

			<!--开始::结束-->
		</main>
		<footer class="btm-ft">
			<p class="clear">
				<span class="fl">©Copyright 2017 学生信息管理系统</span>
				
			</p>
		</footer>
	</div>
</div>
    </form>
</body>
</html>

