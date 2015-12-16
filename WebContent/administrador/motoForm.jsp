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
</head>

<body>
	<!--  +++++++++++ BARRA DE NAVEGACAO +++++++++++ -->
	<%@ include file="/resources/includes/barra-superior.jsp"%>

	<!--  +++++++++++ SECAO PRINCIPAL +++++++++++ 
		 <div id="margem-pequena">
		 	<div id="main" class="container-fluid">
		 		<h3 class="page-header"> Entre com os dados do Mototaxista </h3>
		 	</div>-->
	<div id="main" class="container-fluid">
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Cadastro/Edição do Moto Taxista</h1>
						<p>Por gentileza, preencha os dados solicitados para que o
							cadastro seja efetivado.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="section">
			<div class="container">

				<form method="post"
					action="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD"
					name="formMot">

					<input type="hidden" name="codEmpresa"
						value="${mot.empresa.codEmpresa}" />

					<div class="row">
						<div class="form group col-md-6">
							<label for="codMotoTaxista"> Código: </label> <input type="text"
								name="codMotoTaxista" value="${mot.codMotoTaxista}"
								class="form-control" id="codMotoTaxista" readonly="readonly" />
							<br />
						</div>
					</div>

					<div class="row">
						<div class="form group col-md-6">
							<label for="empresa"> Empresa: </label> <input type="text"
								name="empresa" value="${mot.empresa.nomeFantasia}"
								class="form-control" id="empresa" readonly="readonly" /> <br />
						</div>
					</div>

					<div class="row">
						<div class="form group col-md-6">
							<label for="nome"> Nome: </label> <input type="text" name="nome"
								value="${mot.nome}" class="form-control" id="nome"
								placeholder="Digite o nome do Moto Taxista" /> <br />
						</div>
					</div>

					<div class="row">
						<div class="form group col-md-6">
							<label for="placa"> Placa: </label> <input type="text"
								name="placa" value="${mot.placa}" class="form-control" id="nome"
								placeholder="Digite o número da placa da moto" /> <br />
						</div>
					</div>

					<div class="row">
						<div class="form group col-md-6">								
 										<label for="placa"> Disponível: </label>
 										<c:choose> <c:when test="${mot.disponivel == false}"> 
	 										 <input type="radio"  name="disponivel" value="true"  />Sim
											  <input type="radio"  name="disponivel" value="false" checked="checked"/>Não
 										 </c:when> 
 										 <c:otherwise >
 										 
 										 <input type="radio" name="disponivel" value="true" checked="checked" />Sim
											<input type="radio"  name="disponivel" value="false"/>Não
	 										 
 										 </c:otherwise>
 										  </c:choose>
						</div>
					</div>


					<div id="actions" class="row">
						<div class="col-md-12">
							<button type="submit" class="btn btn-success btn-xs">Enviar</button>
							<a href="<%=request.getContextPath()%>/index.jsp"
								class="btn btn-danger btn-xs">Cancelar</a>
						</div>
					</div>



					<!-- Exemplo de data com JSTL: 
		 Data do pedido: <input
		 type="text" name="dataPedido"
		 value="<fmt:formatDate pattern="dd/MM/yyyy" value="${pedido.dataPedido}" />" /> <br />
		 -->
				</form>
			</div>
		</div>
	</div>
</body>
</html>