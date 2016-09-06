<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		table{
			margin: auto;
			width: 500px;
			height: 300px;
		}
		#DIV{
			border:1px solid #000;
			width: 500px;
			height: 300px;
			margin: auto;
			margin-top: 150px;
		}
		.lab{
			text-align: right;
		}
		.in{
			width: 200px;
			height: 30px;
			border: 1px  solid #008b8b;
			border-radius:4px;
		}
		.in:hover{
			border: 2px  solid #00FFCC;
			
		}
		#dl{
			
		}
		body{
  	      background-image:ur(yyy.jpg) ;
  	      height: 200px;
  	      width: 300px;
        }
	</style>
	<link rel="stylesheet" type="text/css" href="css/Login_style.css" />
	<script type="text/javascript" src="Javascript/Login_javascript.js"></script>
	</head>
	
	<body>
	<h1 align="center">欢迎登陆</h1>
	<div class="login_frame"></div>
	<div class="LoginWindow">
    <div>
    <form method="post" action="${pageContext.request.contextPath }/aa?op=login" onsubmit="return user_input()" class="login"  >
    <p>
      <label for="login">帐号:</label>
      <input type="text" name="name" id="id" value="">
    </p>

    <p>
      <label for="password">密码:</label>
      <input type="password" name="pass" id="password" value="">
    </p>
    
   <tr>
	<td colspan="3" class="login-submit"">
	<input type="submit" value="登录"/>
	<a href="regJsp.jsp">注册</a>
	<p style="clear:  aqua">${name}</p>
	</td>
	</tr>
	</form>
  	</div>
	</div>
	
	<div id="timeArea"><script> LoadBlogParts();</script></div>
	
	<div style="text-align:center;">
	</div>
</body>
</html>
