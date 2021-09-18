<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <%
        // 인코딩 처리
        request.setCharacterEncoding("UTF-8"); 
    %>
    <title>로그인 화면</title>
    
    <!-- css 파일 분리 -->
    <link rel='stylesheet' type='text/css' href='../../css/login_style.css'>
    
    <script type="text/javascript">
    
        function checkValue()
        {
            inputForm = eval("document.loginInfo");
            if(!inputForm.id.value)
            {
                alert("아이디를 입력하세요");    
                inputForm.id.focus();
                return false;
            }
            if(!inputForm.password.value)
            {
                alert("비밀번호를 입력하세요");    
                inputForm.password.focus();
                return false;
            }
        }
    
        // 회원가입 버튼 클릭시 회원가입 화면으로 이동
        function goJoinForm() {
            location.href="JoinForm.jsp";
        }    
    </script>
 
</head>
<body width="100%" height="100%">
	<div id="wrap">
		<form name="loginInfo" action="../join/LoginPro.jsp" method="post" class="loginForm" onsubmit="return checkValue()">
			<h2>Login</h2>
			<div class="idForm">
				<input type="text" class="id" name="id" placeholder="ID">
			</div>
			<div class="passForm">
				<input type="password" class="pw" name="password" placeholder="PW">
			</div>
			<input type="submit" class="btn" value="LOG IN" />
			<script>
				let button = () => {
				alert('login Button !')
				}
			</script>
			<div class="bottomText">
				Don't you have ID? <a href="JoinForm.jsp">sign up</a>
			</div>
		</form>
        
        <% 
            // 아이디, 비밀번호가 틀릴경우 화면에 메시지 표시
            // LoginPro.jsp에서 로그인 처리 결과에 따른 메시지를 보낸다.
            String msg=request.getParameter("msg");
            
            if(msg!=null && msg.equals("0")) 
            {
                out.println("<br>");
                out.println("<font color='red' size='5'>비밀번호를 확인해 주세요.</font>");
            }
            else if(msg!=null && msg.equals("-1"))
            {    
                out.println("<br>");
                out.println("<font color='red' size='5'>아이디를 확인해 주세요.</font>");
            }
        %>    
    </div>    
</body>
</html>


