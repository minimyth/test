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
import javax.servlet.http.HttpSession;

public class TestServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String op = req.getParameter("op");
		if ("detailInfo".equals(op)) {
			detailInfo(req, resp);
		} else if ("login".equals(op)) {
			loginMethod(req, resp);
		} else if( "delete".equals(op)){
			delete(req,resp);
		}

	}
	
	//删除
	private void delete(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("刪除");
		
		String name = req.getParameter("name");
		String sql = "delete from biaodan where name=?";
		boolean list = DBUtil.executeDML(sql, new Object[]{name});
		
	}
	
	//详细信息
	private void detailInfo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("详细信息");
		String name = req.getParameter("name");
		System.out.println(name);
		String sql = "select * from biaodan where name=?";
		List<Object[]> list = DBUtil.executeQuery(sql,new Object[]{name});
		//System.out.println(list);
		req.setAttribute("list", list);
		req.getRequestDispatcher("p.jsp").forward(req, resp);
		
	}

	private void loginMethod(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String name = req.getParameter("name");
		String pass = req.getParameter("pass");

		String sql1 = "select * from biaodan where name = ? ";
		Object[] m1 = { name };
		List<Object[]> list1 = DBUtil.executeQuery(sql1, m1);

		String sql2 = "select * from biaodan where name = ? and pass =? ";
		Object[] m2 = { name, pass };
		List<Object[]> list2 = DBUtil.executeQuery(sql2, m2);
		;

		if (list1.size() == 0) {
			req.setAttribute("name", "对不起哈，此账号不存在哦！");
			req.getRequestDispatcher("index.jsp").forward(req, resp);

		} else if (list2.size() == 0) {
			req.setAttribute("passError", "亲，密码错误哦！");
			req.getRequestDispatcher("index.jsp").forward(req, resp);
		} else {
			User user = new User(name, pass, (String) (list2.get(0)[2]));
			// 建立session对象 获取用户的数据
			HttpSession session = req.getSession();
			session.setAttribute("user", user);
			session.setAttribute("name", name);
			// 请求派发
			req.getRequestDispatcher("WelcomeJsp.jsp").forward(req, resp);
		}
	}

}
