<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="student" class="com.servlet.C_12_27_ex17_Bean_Student" scope="page"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:setProperty property="name" value="ȫ�浿" name="student"/>
	<jsp:setProperty property="age" value="13" name="student"/>
	<jsp:setProperty property="grade" value="6" name="student"/>
	<jsp:setProperty property="studentNum" value="7" name="student"/>
	
	�̸� : <jsp:getProperty property="name" name="student"/><br/>
	���� : <jsp:getProperty property="age" name="student"/><br/>
	�г� : <jsp:getProperty property="grade" name="student"/><br/>
	��ȣ : <jsp:getProperty property="studentNum" name="student"/><br/>

</body>
</html>