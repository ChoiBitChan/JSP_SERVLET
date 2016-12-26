package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S_12_25_ex6_InitParam
 */
// web.xml 에서 안할 때
@WebServlet(urlPatterns={"/InitP"}, initParams={@WebInitParam(name="id",value="aaaaa"),@WebInitParam(name="pw",value="1234")})
public class S_12_26_ex6_ConfigParam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S_12_26_ex6_ConfigParam() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		String id = getInitParameter("id");
		String pw = getInitParameter("pw");
		
		System.out.println("id = " + id);
		System.out.println("pw = " + pw);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}


/*
web.xml 에 작성
<servlet>
	<servlet-name>S_12_25_ex6_InitParam</servlet-name>
	<servlet-class>com.servlet.S_12_26_ex6_ConfigParam</servlet-class>
	
	<init-param>
		<param-name>id</param-name>
		<param-value>abcde</param-value>
	</init-param>
	<init-param>
		<param-name>pw</param-name>
		<param-value>12345</param-value>
	</init-param>
	
</servlet>

<servlet-mapping>
	<servlet-name>S_12_26_ex6_ConfigParam</servlet-name>
	<url-pattern>/IP</url-pattern>
</servlet-mapping>
*/

