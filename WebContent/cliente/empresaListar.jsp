<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Anna - UC013</title>
</head>
<body>
	<h2>Listando Empresas</h2>
	<br />
	
	<p>
		<a
			href="<%=request.getContextPath()%>/cliente/EmpresaCRUD?cmd=novo&codEmpresa=${x.codEmpresa}">Adicionar nova Empresa
		</a>
	</p>

	
	<table border="1">
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
				
				<td>
				<a href="<%=request.getContextPath()%>/cliente/EmpresaCRUD?cmd=editar&cod=${x.codEmpresa}">Editar</a>
				<a href="<%=request.getContextPath()%>/cliente/EmpresaCRUD?cmd=deletar&cod=${x.codEmpresa}">Deletar</a></td>
				
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>