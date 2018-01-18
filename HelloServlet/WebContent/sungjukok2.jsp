<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- JSP 주석 --%>
<jsp:useBean id="sj" scope="page" class="claw0ed.model.SungJukVO" />

<%-- <jsp:setProperty property="name" name="sj" /> get + set = property
<jsp:setProperty property="kor" name="sj" />
<jsp:setProperty property="eng" name="sj" />
<jsp:setProperty property="mat" name="sj" /> --%>

<jsp:setProperty name="sj" property="*" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>JSP 다루기 - 성적처리 결과</title>
</head>
<body>
<h1>JSP 다루기 - 성적처리 결과</h1>
<h2>입력한 정보</h2>

<div><b>이름</b> : <jsp:getProperty property="name" name="sj"/></div>
<div><b>국어</b> : <jsp:getProperty property="kor" name="sj"/></div>
<div><b>영어</b> : <jsp:getProperty property="eng" name="sj"/></div>
<div><b>수학</b> : <jsp:getProperty property="mat" name="sj"/></div>

<h2>처리 결과</h2>
<div><b>총점</b> : <jsp:getProperty property="tot" name="sj"/></div>
<div><b>평균</b> : <jsp:getProperty property="avrg" name="sj"/></div>
<div><b>학점</b> : <jsp:getProperty property="grd" name="sj"/></div>

<hr>
<div>클라이언트 IP 주소 확인 : <%=request.getRemoteAddr() %></div>
<div>요청 URI : <%=request.getRequestURI() %></div>
<div>요청 유형 : <%=request.getMethod() %></div>
<div>컨텍스트 : <%=request.getContextPath() %></div>

</body>
</html>