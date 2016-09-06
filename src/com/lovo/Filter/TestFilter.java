package com.lovo.Filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.li.test.User;



public class TestFilter implements Filter {

	public void destroy() {
	}
	public void init(FilterConfig arg0) throws ServletException {
	}

	
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)arg0;
		HttpServletResponse resp = (HttpServletResponse)arg1;
		
        User user = (User)req.getSession().getAttribute("user");
		if(null == user){
			req.getSession().setAttribute("name","请先登录");
			String path = req.getContextPath();
			//String basePath = req.getScheme()+"://"+req.getServerName();
			PrintWriter out = resp.getWriter();
			//跳转到登录界面
			out.write("<script type='text/javascript'>window.top.location.href='index.jsp'</script>");
			
		}else{
			//让请求通过
			arg2.doFilter(req, resp);
		}
	}
}
