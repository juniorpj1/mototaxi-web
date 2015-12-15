<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="resources/img/icone-uberlandia-mototaxi.ico">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="description" content="">
<meta name="author" content="Diego Santos">

<title>Uberlândia Mototáxi - Clientes</title>

<!--  +++++++++++ REFERENCIAS BASICAS DO BOOTSTRAP +++++++++++ -->
<%@ include file="/resources/includes/refs-bootstrap-inicio.jsp"%>
</head>

<body>
	<!--  +++++++++++ BARRA DE NAVEGACAO +++++++++++ -->
	<%@ include file="/resources/includes/barra-superior.jsp"%>

	<!--  +++++++++++ SECAO PRINCIPAL +++++++++++-->

	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-center">UC009 - Cadastrar Cliente</h1>
					<p class="text-center">Seja bem-vindo! Por favor, fique à
						vontade para cadastrar ou visualizar um Cliente.</p>
				</div>
			</div>
		</div>
	</div>


	<div id="main" class="container-fluid">
		<div id="top" class="row">
			<div class="col-md-3">
				<h2>Clientes Cadastrados:</h2>
			</div>

			<div class="col-md-3"></div>

			<div class="col-md-3">
				<a class="btn btn-success btn-xs pull-right h2"
					href="<%=request.getContextPath()%>/cliente/ClienteCRUD?cmd=novo">Adicionar
					novo Cliente</a>
			</div>
		</div>
	</div>


	<!--  +++++++++ LISTAGEM ++++++++ -->
	<div id="list" class="row">

		<div class="table-responsive col-md-12">
			<table class="table table-striped" cellspacing="0" cellpadding="0">
				<thead>
					<tr>
						<th>Código</th>
						<th>Nome</th>
						<th>CPF</th>
						<th>Senha</th>
						<th>Telefone</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listacli}" var="x">
						<tr>
							<td>${x.codCliente}</td>
							<td>${x.nome}</td>
							<td>${x.cpf}</td>
							<td>${x.senha}</td>
							<td>${x.telefone}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>

	</div>
	<!-- /#list -->

	<!--  +++++++++++ RODAPE +++++++++++ -->
	<%@ include file="/resources/includes/rodape.jsp"%>

	<!--  +++++++++++ REFERENCIAS ADICIONAIS DO BOOTSTRAP +++++++++++ -->
	<%@ include file="/resources/includes/refs-bootstrap-final.jsp"%>

	<!--  +++++++++++ CODIGO DA JANELA MODAL DE CONFIRMAR EXCLUSAO +++++++++++ -->
	<%@ include file="/resources/includes/confirmar-exclusao-modal.jsp"%>


</body>
</html>