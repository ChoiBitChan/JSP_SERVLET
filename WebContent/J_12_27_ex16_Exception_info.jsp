<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page errorPage="J_12_27_ex16_Exception_Errorpage.jsp"%>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		int i = 40/0;
	%>

</body>
</html>


<!-- 

web.xml 에서는 이렇게 작성
<error-page>
	<error-code>404</error-code>
	<location>/error404.jsp</location>
</error-page>
<error-page>
	<error-code>500</error-code>
	<location>/error500.jsp</location>
</error-page>

 -->

