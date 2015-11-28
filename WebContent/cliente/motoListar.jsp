<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Aparício - UC05</title>
</head>
<body>
	<h2>Listando Mototaxistas</h2>
	<br />

	<!-- 
	<p>
		<a
			href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=escolherArtista">Mostrar a média de um MotoTaxista
			
		</a>
	</p>
	 -->

	<table border=1>
		<thead>
			<tr>
				<th>Código</th>
				<th>Nome</th>
				<th>Placa</th>
				<th>Disponível</th>
				<!-- <th>Média</th> -->
				<th colspan=2>Ação</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${lista}" var="x">
				<tr>
					<td>${x.codMotoTaxista}</td> 
					<td>${x.nome}</td>
					<td>${x.placa}</td>
					<td>${x.disponivel}</td>
					<!-- <td>${x.media()}</td>  -->

					<!-- 
					<td><a
						href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=editar&cod=${x.codMotoTaxista}">Editar</a></td>
					 -->
					<td><a
						href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=mediacalc&cod=${x.codMotoTaxista}">Mostrar
							média</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>