<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="icon" href="resources/img/icone-uberlandia-mototaxi.ico" />
<title>Uberlândia Mototaxi</title>
</head>


<body>
	<!--  +++++++++++ REFERENCIAS BASICAS DO BOOTSTRAP +++++++++++ -->
	<%@ include file="/resources/includes/refs-bootstrap-inicio.jsp"%>
	<!--  +++++++++++ BARRA DE NAVEGACAO +++++++++++ -->
	<%@ include file="/resources/includes/barra-superior.jsp"%>

	<!--  +++++++++++ SECAO PRINCIPAL +++++++++++ -->
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-center">UC010 - Mostrar Mototaxistas por
						trecho do nome</h1>
					<p class="text-center">Seja bem-vindo!</p>
				</div>
			</div>
		</div>
	</div>

	<!--  +++++++++++ SECAO PRINCIPAL +++++++++++ -->
	<div id="main" class="container-fluid">
		<div id="top" class="row">
			<div class="col-md-3">
				<h2>Mototaxistas com o trecho do nome:</h2>
			</div>

			<div class="col-md-3"></div>

			<div class="col-md-3"></div>
		</div>

		<!--  +++++++++ LISTAGEM ++++++++ -->
		<div id="list" class="row">
			<div class="table-responsive col-md-12">
				<table class="table table-striped" cellspacing="0" cellpadding="0">
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

			</div>
			<!-- /#list -->
		</div>
	</div>

	<div id="bottom" class="row">
		<div class="col-md-12">

			<ul class="pagination">
				<li class="disabled"><a>&lt; Anterior</a></li>
				<li class="disabled"><a>1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li class="next"><a href="#" rel="next">Próximo &gt;</a></li>
			</ul>
			<!-- /.pagination -->

		</div>
	</div>
	<!-- /#bottom -->


	<!--  +++++++++++ RODAPE +++++++++++ -->
	<%@ include file="/resources/includes/rodape.jsp"%>

	<!--  +++++++++++ REFERENCIAS ADICIONAIS DO BOOTSTRAP +++++++++++ -->
	<%@ include file="/resources/includes/refs-bootstrap-final.jsp"%>

	<!--  +++++++++++ CODIGO DA JANELA MODAL DE CONFIRMAR EXCLUSAO +++++++++++ -->
	<%@ include file="/resources/includes/confirmar-exclusao-modal.jsp"%>
</body>
</html>
