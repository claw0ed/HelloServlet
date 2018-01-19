<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>JSTL 과 DBCP 다루기</title>
</head>
<body>
<h1>JSTL 과 DBCP 다루기</h1>
<h2>오라클 접속하기</h2>

<sql:setDataSource driver="oracle.jdbc.driver.OracleDriver" 
url="jdbc:oracle:thin:@192.168.220.128:1521:xe"
user="hr" password="hr" var="ds"/>

<sql:query dataSource="${ ds }"
sql="select first_name, last_name from employees"
var="rs" />

<c:forEach var="row" items="${ rs.rows }">
	${ row.first_name }, ${ row.last_name } <br>
</c:forEach>

<hr>

<h2>데이터베이스 커넥션풀 사용하기</h2>

<p>JDBC 프로그래밍시 DB 관련 작업에서
연결을 생성하고, 소멸하는 작업이 빈번하게 일어나는데
이때 접속자가 많으면 실행시간이 많이 지연됨</p>

<p>따라서, 연결객체를 만든 후 바로 소멸하지 않고,
이 객체들을 저장하는 저장소 pool 에 일시적으로 저장해 두었다가
다른 사용자가 사용해야 할 경우 객체를 다시
셍성하지 않고 기존에 만들어둔 객체를 재사용하게 함</p>

<p>DBCP 를 사용하면 DB 접속정보를 설정해야 하는데,
이것을 datasource 라 하고 JNDI 표기법을 이용해서 정의함

<p>설정관련 파일 - server.xml, web.xml</p>

<sql:query var="rs" dataSource="jdbc/oracle"
sql="select first_name, salary from employees where salary > ?">
	<sql:param value="10000" /><!-- salary > ? 들어갈 ? -->
</sql:query>

<c:forEach var="row" items="${ rs.rows }">
	${ row.first_name } => ${ row.salary } <br>
</c:forEach>

<p>JNDI - java naming and directory interface<br>
자바 프로그램에서 네트워크로 URI 로 모든 자원의 위치를 파악하고
필요시 그것을 쉽게 호출하게 하기위해 사용하는 규칙</p>

<p>DB 접속 정보 작성 - datasource 정의<br>
conf/server.xml 에 Context 태그 속에 resource 태그로 작성하고
WEB-INF/web.xml 에 resource-ref 태그로 datasource 를 참조</p>

<h2>mysql/mariadb 접속하기</h2>
<!-- mysql : com.mysql.jdbc.Driver -->
<!--         jdbc:mysql://192.168.220.128:3306/claw0ed -->
<!-- mariadb : org.mariadb.jdbc.Driver -->
<!--           jdbc:mariadb://192.168.220.128:3306/claw0ed -->
<sql:setDataSource driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://192.168.220.128:3306/claw0ed"
user="claw0ed" password="Abcdef_12" var="mysql"/>

<sql:query dataSource="${ mysql }"
sql="select city, state, phone from customers"
var="rs" />

<c:forEach var="row" items="${ rs.rows }">
	${ row.city }, ${ row.state }, ${ row.phone } <br>
</c:forEach>

<hr>

<sql:query var="rs" dataSource="jdbc/mysql"
sql="select city, state, country from customers where city like ?">
	<sql:param value="L%" /><!-- salary > ? 들어갈 ? -->
</sql:query>

<c:forEach var="row" items="${ rs.rows }">
	${ row.city }, ${ row.state }, ${ row.country } <br>
</c:forEach>

</body>
</html>