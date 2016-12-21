package com.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.BendangServlet;

@WebServlet("/main.do")
public class MainServlet extends BendangServlet{
	
	private static final long serialVersionUID = 1L;
	//재정의 해서 사용
	@Override
	protected void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//메인으로 포워딩
		String uri = req.getRequestURI();
		//요청 uri
		
		if(uri.indexOf("main.do")!=-1) {
			forward(req, resp, "/WEB-INF/views/main/main.jsp");
		}
	}
}
