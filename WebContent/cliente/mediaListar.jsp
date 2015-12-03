<%@page import="dominio.MotoTaxista"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<h2>Mostrando média</h2>
	<%
		Double media = (Double) request.getAttribute("media");
		String nome = (String) request.getAttribute("nome");
	%>
	<table border="1">
		<tr>
			<td>Nome</td>
			<td>Média</td>
		</tr>
		
		<tr>
			<td><%=nome %></td>
			<td><%=media%></td>
		</tr>
		
	</table>
</body>
</html>