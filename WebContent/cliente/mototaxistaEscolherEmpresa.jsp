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
	<h1>Inserir nova empresa</h1>
	<h2> Escolha a empresa</h2>
	
	</h>
	<table border=1>
 		<thead>
 			<tr>
				<th>Código</th>
 				 <th>Nome fantasia</th>
				 <th>Razão social</th>
				 <th>Telefone</th>
				 <th>E-mail</th>
				 <th>CNPJ</th>
				 <th>Logradouro</th>
				 <th>Número</th>
				 <th>Bairro</th>
				 <th>CEP</th>
				 </tr>
 		</thead>
	 <tbody>
		 <c:forEach items="${lista}" var="x">
		 <tr>
		 	<td>${x.codEmpresa}</td>
			<td>${x.nomeFantasia}</td>
			<td>${x.razaoSocial}</td>
			<td>${x.telefone}</td>
			<td>${x.email}</td>
			<td>${x.cnpj}</td>
			<td>${x.logradouro}</td>
			<td>${x.numero}</td>
			<td>${x.bairro}</td>
			<td>${x.cep}</td>
		 <td><a
		href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=novo&codEmpresa=${x.codEmpresa}">Escolher esta</a></td>
		 </tr>
		 </c:forEach>
 	</tbody>
 	</table>
</body>
</html>