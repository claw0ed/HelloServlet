<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 실행순서 :
    join.jsp
    joinServlet (Member)
    joinResult.jsp
    -->
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h3>회원가입</h3>
<form action="/HelloServlet/example/JoinServlet.do" method="POST">
	ID : <input type="text" name="id" /> <br>
	이름 : <input type="text" name="name" /> <br>
	이메일 : <input type="text" name="email" /> <br>
	직업 : <input type="text" name="job" /> <br>
	<input type="submit" value="가입" />
</form>
</body>
</html>