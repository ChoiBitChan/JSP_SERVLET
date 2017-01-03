<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <jsp:useBean id="member" class="com.servlet.C_01_03_ex22_memberInfo" scope="page"/>
    <jsp:setProperty property="name" name="member" value="홍길동"/>
    <jsp:setProperty property="id" name="member" value="abc"/>
    <jsp:setProperty property="pw" name="member" value="123"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<h1>표현식</h1>
		
		${10}<br/>
		${99.99}<br/>
		${"ABC"}<br/>
		${true}<br/>
		
	<hr/>
	
	<h1>연산자</h1>
		
		${ 1 + 2 }<br/>
		${ 1 - 2 }<br/>
		${ 1 * 2 }<br/>
		${ 1 / 2 }<br/>
		${ 1 > 2 }<br/>
		${ 1 < 2 }<br/>
		${ (1 > 2) ? 1 : 2 }<br/>
		${ (1 > 2) || (1 < 2) }<br/>
		
	<hr/>
	
	<h1>액션태그</h1>
		
		이름 : <jsp:getProperty property="name" name="member"/><br/>
		아이디 : <jsp:getProperty property="id" name="member"/><br/>
		비밀번호 : <jsp:getProperty property="pw" name="member"/><br/>
		
	<br/>
		
		이름 : ${member.name}<br/>
		아이디 : ${member.id}<br/>
		비밀번호 : ${member.pw}<br/>
		
	<hr/>
	
	<h1>내장객체</h1>
	
	<form action="J_01_03_ex22_EL_obj.jsp" method="get">
		아이디 : <input type="text" name="id"><br/>
		비밀번호 : <input type="password" name="pw"><br/>
		<input type="submit" value="login">
	</form>
	
	<%
		application.setAttribute("application_name", "application_value");
		session.setAttribute("session_name", "session_value");
		pageContext.setAttribute("page_name", "page_value");
		request.setAttribute("request_name", "request_value");
	%>
		
</body>
</html>