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
<meta name="author" content="Anna Carolina Novaes">
<!--  +++++++++++ REFERENCIAS BASICAS DO BOOTSTRAP +++++++++++ -->
<%@ include file="/resources/includes/refs-bootstrap-inicio.jsp"%>
<body>
	<!--  +++++++++++ BARRA DE NAVEGACAO +++++++++++ -->
	<%@ include file="/resources/includes/barra-superior.jsp"%>

	<!--  +++++++++++ SECAO PRINCIPAL +++++++++++ -->
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-center">UC005 - Mostrar média de um
						MotoTaxista</h1>
					<p class="text-center">Seja bem-vindo!</p>
				</div>
			</div>
		</div>
	</div>

	<!--  +++++++++++ SECAO PRINCIPAL +++++++++++ -->
	<div id="main" class="container-fluid">
		<div id="top" class="row">
			<div class="col-md-3">
				<h2>Listando médias dos Mototaxistas:</h2>
			</div>

			<div class="col-md-3"></div>

			<div class="col-md-3"></div>
		</div>

		<h2>Mostrando média</h2>

		<%
			Double media = (Double) request.getAttribute("media");
			String nome = (String) request.getAttribute("nome");
		%>

		<div class="row">
			<div class="table-responsive col-md-12">
				<table class="table table-striped" cellspacing="0" cellpadding="0">
					<tr>
						<th>Nome</th>
						<th>Média</th>
					</tr>

					<tr>
						<td><%=nome%></td>
						<td><%=media%></td>
					</tr>
				</table>

			</div>

		</div>
		<!-- /#list -->
		</div>
</body>


<!--  +++++++++++ RODAPE +++++++++++ -->
<%@ include file="/resources/includes/rodape.jsp"%>

<!--  +++++++++++ REFERENCIAS ADICIONAIS DO BOOTSTRAP +++++++++++ -->
<%@ include file="/resources/includes/refs-bootstrap-final.jsp"%>

<!--  +++++++++++ CODIGO DA JANELA MODAL DE CONFIRMAR EXCLUSAO +++++++++++ 
		 <%@ include file="/resources/includes/confirmar-exclusao-modal.jsp"%>-->

</body>
</html>