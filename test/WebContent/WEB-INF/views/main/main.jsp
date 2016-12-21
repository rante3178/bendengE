<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8");
String cp = request.getContextPath();%>

<!DOCTYPE html>
<html lang="en">
  <head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>도레미파솔로시죠~?</title>
	<link rel="stylesheet" href="<%=cp%>/res/jquery/css/smoothness/jquery-ui.min.css" type="text/css"/>
	<link rel="stylesheet" href="<%=cp%>/res/bootstrap/css/bootstrap.min.css" type="text/css"/>
	<link rel="stylesheet" href="<%=cp%>/res/bootstrap/css/bootstrap-theme.min.css" type="text/css"/>
	<link rel="stylesheet" href="<%=cp%>/res/css/style.css" type="text/css"/>
	<link rel="stylesheet" href="<%=cp%>/res/css/layout/layout.css" type="text/css"/>
	<script type="text/javascript" src="<%=cp%>/res/jquery/js/jquery-1.12.4.min.js"></script>
	
 </head>
 <body>
 	<!-- 헤더 include -->
 	<div>
 	<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
 	</div>
 	<!-- 헤더 include -->
 
	<!-- body include -->
 	<div class="container" role="main">
    	<div class="bodyFrame">
         	메인 화면
     	</div>
 	</div>
 	<!-- body include -->
 
 	<!-- footer include -->
 	<div>
 	<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
 	</div>
 	<!-- footer include -->
 	
    <script type="text/javascript" src="<%=cp%>/res/jquery/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="<%=cp%>/res/jquery/js/jquery.ui.datepicker-ko.js"></script>
    <script src="<%=cp%>/res/bootstrap/js/bootstrap.min.js"></script>
  </body>
  
</html>


 