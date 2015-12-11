<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Roberto - UC010</title>
</head>
<body>
	<h2>Mototaxistas por Nome:</h2>
	<br />

	<table border="1">
		<thead>
			<tr>
				<th>Código</th>
				<th>Nome</th>
				<th>Placa</th>
				<th>Disponível</th>
				<th>Empresa</th>
				
			</tr>
		</thead>
	    <tbody>
			<c:forEach items="${moto}" var="x">
				<tr>
					<td>${x.codMotoTaxista}</td>
					<td>${x.nome}</td>
					<td>${x.placa}</td>
					<td>${x.disponivel}</td>
					<td>${x.empresa.nomeFantasia}</td>
								
				</tr>
			</c:forEach>	
</tbody>
	</table>
</body>
</html>
