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
<meta name="description" content="Formulário de média acima de x">
<meta name="author" content="Aparício Pedrosa Franco Junior">

<title>Uberlândia Mototáxi</title>

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
					<h1 class="text-center">UC003 - Mostrar Mototaxistas abaixo da
						média</h1>
					<p class="text-center">Seja bem-vindo! Por favor, digite as
						respectivas médias para listar os Mototaxistas com avaliações
						abaixo da média:</p>
				</div>
			</div>
		</div>
	</div>

	<!--  +++++++++++ SECAO PRINCIPAL +++++++++++ -->
	<div id="margem-pequena">
		<div id="main" class="container-fluid">
			<h3 class="page-header">Formulário para Média :</h3>
		</div>

		<form
			action="<%=request.getContextPath()%>/cliente/MototaxistaServlet2"
			method="post">
			<input type="hidden" name="cod" value="${cod}" />
			<div class="row">
				<div class="form-group col-md-6">
					<label for="media1"> Valor da Média: </label>
					 <input type="text" name="media1" class="form-control" id="media1" placeholder="Digite o valor da média" />
				</div>
			</div>

			<hr />

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