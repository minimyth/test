package com.li.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ZhuCeServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
			String name = req.getParameter("name");
			String pass = req.getParameter("pass");
			String email = req.getParameter("email");
			System.out.println(name);
			System.out.println(pass);
			System.out.println(email);
			
			String sql = "select *from biaodan where name=?";
			List<Object[]> list = DBUtil.executeQuery(sql, new Object[]{name});
			if(list.size()>0){
				this.getServletContext().setAttribute("regError", "用户名已存在");
			//	resp.sendRedirect("regJsp.jsp");
				req.getRequestDispatcher("regJsp.jsp").forward(req, resp);
			}else  if(name!=null){
				String sq2 = "insert into biaodan(name,pass,email) values(?,?,?)";
				DBUtil.executeDML(sq2, new Object[]{name,pass,email});
				resp.setHeader("refresh", "3;url=index.jsp");
				resp.getWriter().write("注册成功，将在3秒后跳转");
	      }
	}
}
