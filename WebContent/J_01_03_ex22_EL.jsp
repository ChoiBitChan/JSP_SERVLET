<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <jsp:useBean id="member" class="com.servlet.C_01_03_ex22_memberInfo" scope="page"/>
    <jsp:setProperty property="name" name="member" value="ȫ�浿"/>
    <jsp:setProperty property="id" name="member" value="abc"/>
    <jsp:setProperty property="pw" name="member" value="123"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<h1>ǥ����</h1>
		
		${10}<br/>
		${99.99}<br/>
		${"ABC"}<br/>
		${true}<br/>
		
	<hr/>
	
	<h1>������</h1>
		
		${ 1 + 2 }<br/>
		${ 1 - 2 }<br/>
		${ 1 * 2 }<br/>
		${ 1 / 2 }<br/>
		${ 1 > 2 }<br/>
		${ 1 < 2 }<br/>
		${ (1 > 2) ? 1 : 2 }<br/>
		${ (1 > 2) || (1 < 2) }<br/>
		
	<hr/>
	
	<h1>�׼��±�</h1>
		
		�̸� : <jsp:getProperty property="name" name="member"/><br/>
		���̵� : <jsp:getProperty property="id" name="member"/><br/>
		��й�ȣ : <jsp:getProperty property="pw" name="member"/><br/>
		
	<br/>
		
		�̸� : ${member.name}<br/>
		���̵� : ${member.id}<br/>
		��й�ȣ : ${member.pw}<br/>
		
	<hr/>
	
	<h1>���尴ü</h1>
	
	<form action="J_01_03_ex22_EL_obj.jsp" method="get">
		���̵� : <input type="text" name="id"><br/>
		��й�ȣ : <input type="password" name="pw"><br/>
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