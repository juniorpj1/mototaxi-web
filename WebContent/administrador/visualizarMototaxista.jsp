<%@ page import = "dominio.MotoTaxista" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<link rel="icon" href="resources/img/icone-uberlandia-mototaxi.ico">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="description" content="">
<meta name="author" content="Anna Carolina Novaes">

<title>Uberlândia Mototáxi</title>

	<!--  +++++++++++ REFERENCIAS BASICAS DO BOOTSTRAP +++++++++++ -->
	<%@ include file="/resources/includes/refs-bootstrap-inicio.jsp"%>

	<!--  +++++++++++ BARRA DE NAVEGACAO +++++++++++ -->
	<%@ include file="/resources/includes/barra-superior.jsp"%>
	
</head>
<body>
	<%
		MotoTaxista mot = (MotoTaxista) request.getAttribute("mot");
	%>

	<!--  +++++++++++ SECAO PRINCIPAL +++++++++++ -->
	<div id="margem-pequena">
		<div id="main" class="container-fluid">
			<h3 class="page-header">Dados do Mototaxista:</h3>
		</div>
	</div>

	<div class="section">
		<div class="container">

					<div class="row">
						<div class="col-md-4">
							<p>
								<strong>Código</strong>
							</p>
							<p><%=mot.getCodMotoTaxista()%></p>
						</div>

			<div class="col-md-4">
				<p>
					<strong>Empresa</strong>
				</p>
				<p><%=mot.getEmpresa().getNomeFantasia()%></p>
			</div>

			<div class="col-md-4">
				<p>
					<strong>Nome</strong>
				</p>
				<p><%=mot.getNome() %></p>
			</div>

			<div class="col-md-4">
				<p>
					<strong>Placa</strong>
				</p>
				<p><%=mot.getPlaca() %></p>
			</div>

			<div class="col-md-4">
				<p>
					<strong>Disponível?</strong>
				</p>
				<p><%=mot.getDisponivel() %></p>
			</div>

			<hr />
			
			<div id="actions" class="row">
				<div class="col-md-12">
				<br>
				<br>
					<a class="btn btn-success btn-xs"
									href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=editar&cod=<%=mot.getCodMotoTaxista()%>">Editar</a>
					<a class="btn btn-danger btn-xs"
									href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=listar">Voltar</a>
				</div>
			</div>
		</div>

</div>
</div>
	<!--  +++++++++++ RODAPE +++++++++++ -->
	<%@ include file="/resources/includes/rodape.jsp"%>

	<!--  +++++++++++ REFERENCIAS ADICIONAIS DO BOOTSTRAP +++++++++++ -->
	<%@ include file="/resources/includes/refs-bootstrap-final.jsp"%>

	<!--  +++++++++++ CODIGO DA JANELA MODAL DE CONFIRMAR EXCLUSAO +++++++++++ -->
	<%@ include file="/resources/includes/confirmar-exclusao-modal.jsp"%>

</body>
</html>