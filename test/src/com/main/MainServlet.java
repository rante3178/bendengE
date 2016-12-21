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
	//������ �ؼ� ���
	@Override
	protected void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//�������� ������
		String uri = req.getRequestURI();
		//��û uri
		
		if(uri.indexOf("main.do")!=-1) {
			forward(req, resp, "/WEB-INF/views/main/main.jsp");
		}
	}
}
