<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Chamados</title>
</head>

<body>
	<h2>Chamados por Período</h2>
	<br />

	<table border="1">
		<thead>
			<tr>
				<th>Código</th>
				<th>Origem</th>
				<th>Destino</th>
				<th>Data</th>
				<th>Cliente</th>
				<th>MotoTaxista</th>
				<th>Bandeirada</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${lista}" var="x">
				<tr>
					<td>${x.codChamado}</td>
					<td>${x.origem}</td>
					<td>${x.destino}</td>
					<td>${x.dataHora}</td>
					<td>${x.cliente.nome}</td>
					<td>${x.motoTaxista.nome}</td>
					<td>${x.bandeirada.valorKM}</td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>