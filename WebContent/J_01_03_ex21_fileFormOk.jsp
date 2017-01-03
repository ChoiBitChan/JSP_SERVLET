<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%
    	String path = request.getRealPath("F_01_03_ex21_fileFolder");
    
    	int size = 1024 * 1024 * 10; // 10M
    	String file = "";
    	String oriFile = "";
    	
    	try { // 실제로 업로드하는 과정
    		MultipartRequest multi = new MultipartRequest(request, path, size, "EUC-KR", new DefaultFileRenamePolicy());
    		
    		Enumeration files = multi.getFileNames();
    		String str = (String)files.nextElement();
    		
    		file = multi.getFilesystemName(str);
    		oriFile = multi.getOriginalFileName(str);
    		
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	file upload success!
	<!-- 실제로 여기에 생성됨 -->
	<!-- C:\Users\user2\workspace2\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\jsp_servlet_study\F_01_03_ex21_fileFolder -->
</body>
</html>