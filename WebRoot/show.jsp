<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<Object[]> list = (List<Object[]>)request.getAttribute("show");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	#tab td{
			border: 2px  solid #F00;
	}
	</style>

  </head>
  <body>
    <table id="tab">
    	<tr>
    		<td>用户名</td>
    		<td>email</td>
    		<td>操作</td>
    	</tr>
    	
    	<%
    	for(Object[] os:list){
    		out.println("<tr>");
    		out.println("<td>"+os[0]+"</td>");
    		out.println("<td>"+os[2]+"</td>");
    		%>
    		<td><a href="${pageContext.request.contextPath }/aa?op=detailInfo&name=<%=os[0] %>">查看</a><a href="${pageContext.request.contextPath }/aa?op=delete&name=<%=os[0] %>">删除</a></td>
    		<%
    		out.println("</tr>");
    	}
    	 %>
    	 
   </table>
  </body>

</html>
