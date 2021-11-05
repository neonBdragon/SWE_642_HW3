<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="true"%>
<%@ page import="logic.DataBean"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	DataBean data = new DataBean();
	data = (DataBean) session.getAttribute("databean");

	List<String> idParts = new ArrayList<String>();
	%>

	<h1>Thank you for completing the survey!</h1>
	<h2>Also, congratulations!!!</h2>
	<p>
		Based on the survey data you submitted, you won our secret raffle!<br>
		Your mean score was: <strong><%=data.getMean()%></strong> and standard deviation score was: <strong><%=data.getSTDDev()%></strong><br>
		Earning you 2 free movie tickets!!!
	</p>

	<ul>
		<%
		for (String id : idParts) {
			out.println("<li>");
			out.print("<a href='ProcessServlet?user_choice=" + id + "'>");
			out.print(id);
			out.print("</a>");
			out.println("</li>");
		}
		%>
	</ul>

</body>
</html>