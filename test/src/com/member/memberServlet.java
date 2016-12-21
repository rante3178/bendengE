package com.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.BendangServlet;
import com.util.SessionInfo;

@WebServlet("/member/*")
public class memberServlet extends BendangServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cp = req.getContextPath();
		String uri = req.getRequestURI();//요청 uri
		HttpSession session = req.getSession();//세션 객체를 얻어옴
		SessionInfo sessionInfo = new SessionInfo();
		
		if(uri.indexOf("login.do")!=-1){
			//로그인 화면으로 이동
			forward(req, resp, "/WEB-INF/views/member/login.jsp");
		}else if(uri.indexOf("login_ok.do")!=-1){
			//로그인 처리
		}
	}
}
