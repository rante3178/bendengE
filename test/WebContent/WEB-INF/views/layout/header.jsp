<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8");
	String cp = request.getContextPath();
%>
<style>
*{
font-family: sans-serif;
}
</style>
<div id="header-top" style="height: 60px;" align="center">
	<div style="height: 55px; width: 1000px;" align="center">
		<div id="headerRight">
			<div style="margin-top: 20px; float: right;">
				<c:choose>
					<c:when test="${empty sessionScope.member}">
						<a href="<%=cp%>/member/login.do" style="color: black; font-weight: bold;">로그인</a>
							&nbsp;|&nbsp;
							<a href="<%=cp%>/" style="color: black; font-weight: bold;">회원가입</a>
					</c:when>
					<c:otherwise>
						<span style="color: black; font-weight: bold;" >${sessionScope.member.userName}</span>님
								&nbsp;|&nbsp;
								<a href="<%=cp%>/" style="color: black; font-weight: bold;">로그아웃</a>
								&nbsp;|&nbsp;
								<a href="<%=cp%>/" style="color: black; font-weight: bold;">정보수정</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</div>

<div id="header-bottom" style="height: 60px;"align="center">
	<div style="height: 60px; width: 1000px">
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header" >
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      	<!-- 메인으로 가는 버튼 -->
	      <a class="navbar-brand" href="<%=cp%>/" style="color: white; font-weight: bold; margin-left: 20px;">Main</a>
	    </div>
	    <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li><a href="#" style="color: white-space; font-weight: bold;">[ 공지 사항  ]</a></li>
	        <li><a href="#" style="color: white-space; font-weight: bold;">[ D I Y ]</a></li>
	      	<li><a href="#" style="color: white-space; font-weight: bold;">[ 혼 술 게 시 판 ]</a></li>
	      	<li><a href="#" style="color: white-space; font-weight: bold;">[ 자 유 게 시 판 ]</a></li>
	      	<li><a href="#" style="color: white-space; font-weight: bold;">[ 혼 술 탈 출  ]</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
	</div>
</div>
<hr style="width:1200px ;color:black; background-color:black; height:1px; border:none"/>
