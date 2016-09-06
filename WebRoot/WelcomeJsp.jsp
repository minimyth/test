<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录成功</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style>
	#head span:hover{
				color:  #0000FF;
				text-shadow: 4px 6px 8px  deepskyblue;
			}
	#head span{
				font-size: 70px;
				font-weight: bold;
				font-family: "宋体";
				color: aqua;
				display: block;
				margin-left: 200px;
				float: left;
				text-shadow: 4px 5px 5px coral;
			}
	#head span:hover{
				color: crimson;
				text-shadow: 4px 6px 8px  deepskyblue;
			}
	
	iframe{
		width:100%;
		height:620px;
		background-color: lightblue;
		
	}
	#head1 span:hover{
				color:  #0000FF;
				text-shadow: 4px 6px 8px  deepskyblue;
			}
	#head1 span{
				font-size:20px;
				font-weight: bold;
				font-family: "宋体";
				color: aqua;
				display: block;
				margin-left: 20px;
				float: left;
				text-shadow: 3px 3px 3px  coral;
				margin-top: 50px;
			}
	#head1 span:hover{
				color: crimson;
				text-shadow: 3px 3px 3px  deepskyblue;
			}
	</style>



  </head>
  
  <body>
		<table width="100%" border="1">
			<tr>
				<td id="head" colspan="2" style="background-color:#FFA500;">
					<span>欢迎</span><span>${name}</span><span>登录</span>
				</td>
			</tr>
			<tr>
				<td  id="head1" style="background-color:#FFD700;width:100px;">
					<span><a href="bb">点击下载</a></span></br>
    			    <span><a href="ss.do" target="look">点击查询</a></span>
                    <span><a href="http://youku.com" target="look">优酷视频</a></span>
                    <span><a href="http://baidu.com" target="look">百度一下</a></span>
				</td>
				<td style="background-color:#eeeeee;height:630px;width:800px;">
					<iframe  name="look">
						
					</iframe>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="background-color:#FFA500;text-align:center;">
					This is my first software' think you for using it. </td>
			</tr>
		</table>
	</body>
  
  
</html>
