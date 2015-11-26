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
		<h2>Entre com os dados da Empresa</h2>
 		<form method="post" action="<%=request.getContextPath()%>/cliente/EmpresaCRUD" name="formEmpr">
 		
			 Código: <input type="text" readonly="readonly" name="codEmpresa"
			 value="${empr.codEmpresa}" /> <br />
			
			 Nome fantasia: <input
			 type="text" name="nomeFantasia"
			 value="${empr.nomeFantasia}" /> <br />
			 
			 Razão social: <input
			 type="text" name="razaoSocial"
			 value="${empr.razaoSocial}" /> <br />
			 
			 Telefone: <input
			 type="text" name="telefone"
			 value="${empr.telefone}" /> <br />
			 
			 E-mail: <input
			 type="text" name="email"
			 value="${empr.email}"/> <br/>
			 
			 CNPJ: <input
			 type="text" name="cnpj"
			 value="${empr.cnpj}"/> <br/>
			 
			 Logradouro: <input
			 type="text" name="logradouro"
			 value="${empr.logradouro}"/> <br/>
			 
			 Número: <input
			 type="text" name="numero"
			 value="${empr.numero}"/> <br/>
			 
			 Bairro: <input
			 type="text" name="bairro"
			 value="${empr.bairro}"/> <br/>
			 
			 CEP: <input
			 type="text" name="cep"
			 value="${empr.cep}"/> <br/>
			 
			 
			<input type="submit" value="Enviar" />
			
		<!-- Exemplo de data com JSTL: 
		 Data do pedido: <input
		 type="text" name="dataPedido"
		 value="<fmt:formatDate pattern="dd/MM/yyyy" value="${pedido.dataPedido}" />" /> <br />
		 -->
 </form>
</body>
</html>