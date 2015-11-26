<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Teste CRUD</title>
</head>
<body>
	<h2>Lista de Bandeiradas</h2>
	<br />
	<p>
		<a
			href="<%=request.getContextPath()%>/administrador/BandeiradaCRUD?cmd=novo">Adicionar
			nova Bandeirada</a>
	</p>
	<table border=1>
		<thead>
			<tr>
				<th>Código</th>
				<th>Valor Inicial</th>
				<th>Valor KM</th>
				<th colspan=2>Ação</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${lista}" var="x">
				<tr>
					<td>${x.codBandeirada}</td>
					<td>${x.valorInicial}</td>
					<td>${x.valorKM}</td>
					<td><a
						href="<%=request.getContextPath()%>/administrador/BandeiradaCRUD?cmd=editar&cod=${x.codBandeirada}">Editar</a></td>
					<td><a
						href="<%=request.getContextPath()%>/administrador/BandeiradaCRUD?cmd=deletar&cod=${x.codBandeirada}">Excluir</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>