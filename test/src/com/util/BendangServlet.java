package com.util;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//각자 만들 Servlet에서 상속받아서 사용하면 됨.

public abstract class BendangServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		process(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		process(req, resp);
	}

	//포워딩을 위한 메소드
	protected void forward(HttpServletRequest req, 	HttpServletResponse resp, String path)
			throws ServletException, IOException {
		RequestDispatcher rd=req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}

	//재정의가 필요한 process.
	protected abstract void process(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException;
}
