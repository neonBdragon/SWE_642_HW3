<!--
    Created by: Brandon Mack
    JSP for Simple Acknowledge of someone who submitted the form
-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="true"%>
<%@ page import="logic.DataBean"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Simple Acknowledgement</title>
</head>
<body>

	<%
	DataBean data = new DataBean();
	data = (DataBean) session.getAttribute("databean");

	List<String> idParts = new ArrayList<String>();
	idParts = (List<String>) session.getAttribute("studentids");
	%>

	<h1>Thank you for completing the survey!</h1>
	<p>
		Based on the survey data you submitted, you did not win our secret raffle...<br>
		Your mean score was: <strong><%=data.getMean()%></strong> and standard deviation score was: <strong><%=data.getSTDDev()%></strong>
	</p>

	<br>

	<h3>Student ID List</h3>

	<ul>
		<%
		for (String id : idParts) {
			out.println("<li><a href='ProcessServlet?user_choice=" + id + "'>" + id + "</a></li>");
		}
		%>
	</ul>
</body>
</html>