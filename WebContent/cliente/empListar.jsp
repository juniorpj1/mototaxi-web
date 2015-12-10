<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Empresas</title>
</head>

<body>
	<h2>Lista de Empresas</h2>
	<br />

	<table border="1">
		<thead>
			<tr>
				<th>Código</th>
				<th>Nome Fantasia</th>
				<th>CNPJ</th>
				<th>CEP</th>
				<th colspan="2">Ação</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listaemp}" var="x">
				<tr>
				
					<td>${x.codEmpresa}</td>
					<td>${x.nomeFantasia}</td>
					<td>${x.cnpj}</td>
					<td>${x.cep}</td>
					
			<td><a href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=chamados&cod=${x.codEmpresa}">Mostrar chamados por período</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>