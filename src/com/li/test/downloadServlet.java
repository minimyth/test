package com.li.test;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class downloadServlet extends HttpServlet {
	
	public downloadServlet(){
		
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("TestServlet被初始化了");
		Enumeration<String> e = config.getInitParameterNames();
		while(e.hasMoreElements()){
			String name = e.nextElement();
			String value = config.getInitParameter(name);
			System.out.println(name+"==>"+value);
		}
		super.init(config);
	}

	@Override
	public void init() throws ServletException {
		System.out.println("TestServlet被初始化了");
		super.init();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String fileName = "Untitled1.txt";
		String realPath = this.getServletContext().getRealPath("/")+fileName;
		
		File f = new File(realPath);
		Enumeration<String> es = req.getHeaders("User-Agent");
		fileName = es.nextElement().contains("Firefox")?
		new String(f.getName().getBytes("utf-8"),"iso-8859-1"):
		URLEncoder.encode(f.getName(), "utf-8");
			
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("application/octet-stream");
		resp.setHeader("Content-Disposition","attachment;filename="+fileName);
		resp.setHeader("Content-Location", fileName);
		resp.setHeader("Content-length", f.length()+"");
		
		InputStream in = new FileInputStream(f);
		OutputStream out = resp.getOutputStream();
		byte[] bs = new byte[1024*1024];
		int i;
		while((i=in.read(bs))!=-1){
			out.write(bs, 0, i);
		}
		out.flush();
		out.close();
		in.close();
	}

	
}
