<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="icon" href="resources/img/icone-uberlandia-mototaxi.ico" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Uberlândia Mototaxi</title>
<!--  +++++++++++ REFERENCIAS BASICAS DO BOOTSTRAP +++++++++++ -->
<%@ include file="/resources/includes/refs-bootstrap-inicio.jsp"%>

</head>
<body>
	<!--  +++++++++++ BARRA DE NAVEGACAO +++++++++++ -->
	<%@ include file="/resources/includes/barra-superior.jsp"%>

	<!--  +++++++++++ SECAO PRINCIPAL +++++++++++ -->
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-center">UC010 - Mostrar Mototaxistas por trecho do nome</h1>
					<p class="text-center">Seja bem-vindo!</p>
				</div>
			</div>
		</div>
	</div>
	
	<!--  +++++++++++ SECAO PRINCIPAL +++++++++++ -->
	<div id="margem-pequena">
		<div id="main" class="container-fluid">
			<h3 class="page-header">Formulário para Nome de Mototaxista</h3>
		</div>

		<form method="post"
			action="<%=request.getContextPath()%>/cliente/MotoTaxistas2CRUD">

			<input type="hidden" name="cod" value="${cod}" />
			<div class="row">
				<div class="form-group col-md-6">
					<label for="nome"> Nome do Mototaxista: </label> <input type="text"
						name="nome" class="form-control" id="nome"
						placeholder="Digite o nome" />

				</div>
			</div>

			<div id="actions" class="row">
				<div class="col-md-12">
					<button type="submit" class="btn btn-primary">Pesquisar</button>
					<button type="reset" class="btn btn-default">Limpar</button>
				</div>
			</div>
		</form>
	</div>

	<!--  +++++++++++ RODAPE +++++++++++ -->
	<%@ include file="/resources/includes/rodape.jsp"%>

	<!--  +++++++++++ REFERENCIAS ADICIONAIS DO BOOTSTRAP +++++++++++ -->
	<%@ include file="/resources/includes/refs-bootstrap-final.jsp"%>

	<!--  +++++++++++ CODIGO DA JANELA MODAL DE CONFIRMAR EXCLUSAO +++++++++++ -->
	<%@ include file="/resources/includes/confirmar-exclusao-modal.jsp"%>



</body>
</html>