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
	
	
		<h1>Teste de CRUD</h1>
		<h2>Entre com os dados do MotoTaxista</h2>
 		<form method="post" action="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD" name="formMot">
 		
			 Código: <input type="text" readonly="readonly" name="codMotoTaxista"
			 value="${mot.codMotoTaxista}" /> <br />
			
			 Empresa: <input type="text" readonly="readonly" name="empresa"
			 value="${mot.empresa.nomeFantasia}"/><br />
			 
			 <input type="hidden" name="codEmpresa" value="${mot.empresa.codEmpresa}" />
			
			 Nome: <input
			 type="text" name="nome"
			 value="${mot.nome}" /> <br />
			 
			 Placa: <input
			 type="text" name="placa"
			 value="${mot.placa}" /> <br />
			 
			 Disponível: <input
			 type="text" name="disponivel"
			 value="${mot.disponivel}" /> <br />
			 
			 
			 
			<input type="submit" value="Enviar" />
			
		<!-- Exemplo de data com JSTL: 
		 Data do pedido: <input
		 type="text" name="dataPedido"
		 value="<fmt:formatDate pattern="dd/MM/yyyy" value="${pedido.dataPedido}" />" /> <br />
		 -->
 </form>
</body>
</html>