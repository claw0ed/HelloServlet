<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 자바코드 블럭 시작
	// 1. 클라이언트가 요청한 데이터를
	// 자바코드에서 사용할수 있도록 변수로 초기화 함
	request.setCharacterEncoding("UTF-8"); // 한글처리
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String mat = request.getParameter("mat");
	
	// 2. 성적처리 (총점/평균/학점)
	int tot = Integer.parseInt(kor) + Integer.parseInt(eng) + Integer.parseInt(mat);
	
	double avg = (double) tot / 3;
	
	String grd = "가";
	
	switch( (int) avg / 10 ) {
	case 10: 
	case 9:
		grd = "수";
		break;
	case 8:
		grd = "우";
		break;
	case 7:
		grd = "미";
		break;
	case 6:
		grd = "양";
		break;
	}
	
	// 3. 결과 출력
	
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>JSP 다루기 - 성적처리 결과</title>
</head>
<body>
<h1>JSP 다루기 - 성적처리 결과</h1>
<h2>입력한 정보</h2>

<div><b>이름</b> : <%=name %></div>
<div><b>국어</b> : <%=kor %></div>
<div><b>영어</b> : <%=eng %></div>
<div><b>수학</b> : <%=mat %></div>

<h2>처리 결과</h2>
<div><b>총점</b> : <%=tot %></div>
<div><b>평균</b> : <%=String.format("%.1f", avg) %></div>
<div><b>학점</b> : <%=grd %></div>

</body>
</html>