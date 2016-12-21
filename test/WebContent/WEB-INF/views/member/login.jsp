<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
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

<style type="text/css">
.form-signin {
  max-width: 400px;
  padding: 15px;
  margin: 0 auto;
}

@media (min-width: 768px) {
  .form-signin {
    padding-top: 70px;
  }
}

.form-signin-heading {
  text-align: center;
  font-weight:bold;  
  font-family: 궁서, "Malgun Gothic", "맑은 고딕", sans-serif;
  margin-bottom: 30px;
}

.lbl {
   position:absolute; 
   margin-left:15px; margin-top: 13px;
   color: white;
   font-family: NanumGothic, 나눔고딕, "Malgun Gothic", "맑은 고딕", 돋움, sans-serif;
}

.loginTF {
  max-width: 370px; height:45px;
  padding: 5px;
  padding-left: 15px;
  margin-top:5px; margin-bottom:15px;
  background: #222; color: white;
}
</style>

<script type="text/javascript">

function bgLabel(ob, id) {
       if(!ob.value) {
          document.getElementById(id).style.display="";
       } else {
          document.getElementById(id).style.display="none";
       }
}

function sendLogin() {
//정규식 필요
	var f = document.loginForm;

	var str = f.userId.value;
	if(!str) {
		f.userId.focus();
		return false;
	}

	str = f.userPwd.value;
	if(!str) {
		f.userPwd.focus();
	return false;
	}
	f.action = "<%=cp%>/member/login_ok.do";
	f.submit();
}
</script>
</head>
<body>

<!-- header-->
<div>
    <jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
</div>
<!-- header -->

<div class="container" role="main">
	
	<div class="bodyFrame">
	
		<form class="form-signin" name="loginForm" method="post">
		
		<h2 class="form-signin-heading">Log In</h2>
        
			<!-- 아이디 -->
			<label for="userId" id="lblUserId" class="lbl">아이디</label>
			<input type="text" id="userId" name="userId" class="form-control loginTF" autofocus="autofocus"
       				onfocus="document.getElementById('lblUserId').style.display='none';"
       				onblur="bgLabel(this, 'lblUserId');">
      		<!-- 아이디 -->
       
       		<!-- 패스워드 -->
        	<label for="userPwd" id="lblUserPwd" class="lbl">패스워드</label>
        	<input type="password" id="userPwd" name="userPwd" class="form-control loginTF"
                  onfocus="document.getElementById('lblUserPwd').style.display='none';"
                  onblur="bgLabel(this, 'lblUserPwd');">
       		<!-- 패스워드 -->
       
       		<!-- 로그인버튼 -->
        	<button class="btn btn-lg btn-primary btn-block" type="button" onclick="sendLogin();" style="background: #222; color: white;">로그인</button>
       		<!-- 로그인 버튼 -->
        
        	<div style="margin-top:30px; text-align: center;">
            	<button type="button" class="btn btn-link" style="color: black;" onclick="location.href='<%=cp%>/member/member.do';">회원가입</button>
            	<button type="button" class="btn btn-link" style="color: black;">아이디찾기</button>
            	<button type="button" class="btn btn-link" style="color: black;">패스워드찾기</button>
        	</div>
        	<div style="margin-top:10px; text-align: center;">${message}</div>
    	</form>
    </div>
</div>

<!-- footer -->
<div>
    <jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
</div>
<!-- footer -->

<script type="text/javascript" src="<%=cp%>/res/jquery/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="<%=cp%>/res/jquery/js/jquery.ui.datepicker-ko.js"></script>
<script type="text/javascript" src="<%=cp%>/res/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>