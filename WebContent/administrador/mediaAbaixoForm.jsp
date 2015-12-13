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
<meta name="description" content="Formul�rio de m�dia acima de x">
<meta name="author" content="Apar�cio Pedrosa Franco Junior">

<title>Uberl�ndia Motot�xi</title>

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
						m�dia</h1>
					<p class="text-center">Seja bem-vindo! Por favor, digite as
						respectivas m�dias para listar os Mototaxistas com avalia��es
						abaixo da m�dia:</p>
				</div>
			</div>
		</div>
	</div>

	<!--  +++++++++++ SECAO PRINCIPAL +++++++++++ -->
	<div id="margem-pequena">
		<div id="main" class="container-fluid">
			<h3 class="page-header">Formul�rio para M�dia :</h3>
		</div>

		<form
			action="<%=request.getContextPath()%>/cliente/MototaxistaServlet2"
			method="post">
			<input type="hidden" name="cod" value="${cod}" />
			<div class="row">
				<div class="form-group col-md-6">
					<label for="media1"> Valor da M�dia: </label>
					 <input type="text" name="media1" class="form-control" id="media1" placeholder="Digite o valor da m�dia" />
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