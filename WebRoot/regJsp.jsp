<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <base href="<%=basePath%>">
    
    <title>注册界面</title>
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
		body{
		    background-image: ur(qqqqq.jpg);
		}
	</style>
	
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>jQuery模态窗口用户注册代码</title>
	
	<link rel="stylesheet" href="css/style.css">
	
	</head>
	
  </head>
  <body  background-image: ur(qqqqq.jpg)>
  	 
<div class="open">打开窗口</div>

<div class="modal">
	<div class="form">
		<form action="cc" method="post">
			<label for="name" required="required">昵　称</label>
			<input type="text" name="name"/>
			<label for="email" required="required">电子邮件</label>
			<input type="text" name="email"/>
			<label for="pass">密　码</label>
			<input type="password" name="pass" required="required"/>
			<tr>
	  		<td colspan="3" style="text-align: center;">
	  		<input type="submit" value="注册"/>
	  		<a href="index.jsp">登录</a>
	  		</tr>
	  		${regError }
			
		</form>
	</div>
	<div class="invite">
		<h2>我们之间隔离那么那么长的距离，终究是不回不去了。</h2>
		<div class="nope">你给的伤，连微笑都掩饰不了。</div>
		<div title="close" class="close"></div>
	</div>
   </div>
	<script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	$(".close, .nope").on('click', function () {
	  $('.modal').addClass('hidden');
	  $('.open').addClass('active');
	})
	
	$(".open").on('click', function () {
	  $(this).removeClass('active');
	  $('.modal').removeClass('hidden');
	})
	</script>
	<div style="text-align:center;">
	</div>


</body>
</html>
