<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="resources/img/icone-uberlandia-mototaxi.ico">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="description" content="">
<meta name="author" content="Anna Carolina Novaes">

<title>Uberlândia Mototáxi</title>

<!--  +++++++++++ REFERENCIAS BASICAS DO BOOTSTRAP +++++++++++ -->
<%@ include file="/resources/includes/refs-bootstrap-inicio.jsp"%>
</head>

<body>
	<!--  +++++++++++ BARRA DE NAVEGACAO +++++++++++ -->
	<%@ include file="/resources/includes/barra-superior.jsp"%>

	<!--  +++++++++++ SECAO PRINCIPAL +++++++++++ -->
	<div id="main" class="container-fluid">
		<div id="top" class="row">
			<div class="col-md-3">
				<h2>Itens</h2>
			</div>

			<div class="col-md-3"></div>

			<div class="col-md-3">
				<a href="add.html" class="btn btn-success btn-xs pull-right h2">Novo
					Item</a>
			</div>
		</div>

		<!--  +++++++++ LISTAGEM ++++++++ -->
		<div id="list" class="row">

			<div class="table-responsive col-md-12">
				<table class="table table-striped" cellspacing="0" cellpadding="0">
					<thead>
						<tr>
							<th>ID</th>
							<th>Header 1</th>
							<th>Header 2</th>
							<th>Header 3</th>
							<th class="actions">Ações</th>
						</tr>
					</thead>
					<tbody>

						<tr>
							<td>1001</td>
							<td>Lorem ipsum dolor sit amet, consectetur adipiscing</td>
							<td>Jes</td>
							<td>01/01/2015</td>
							<td class="actions"><a class="btn btn-success btn-xs"
								href="view.html">Visualizar</a> <a
								class="btn btn-warning btn-xs" href="edit.html">Editar</a> <a
								class="btn btn-danger btn-xs" href="#" data-toggle="modal"
								data-target="#delete-modal">Excluir</a></td>
						</tr>

					</tbody>
				</table>

			</div>

		</div>
		<!-- /#list -->
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