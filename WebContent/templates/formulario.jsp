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
		 <div id="margem-pequena">
		 	<div id="main" class="container-fluid">
		 		<h3 class="page-header"> Template inicial </h3>
		 	</div>
		 	
		 	<form action="#" method="post">
		 		<div class="row">
		 			<div class="form-group col-md-6">
		 				<label for="campo1">
		 					Campo um:
		 				</label>
		 				<input type="text" class="form-control" id="campo1" id="campo1" placeholder="Digite o campo 1">	
		 			</div>
		 		</div>
		 		
		 		<hr/>
		 		
		 		<div class="row">
		 			<div class="form-group col-md-6">
		 				<label for="campo1">
		 					Campo dois:
		 				</label>
		 				<input type="text" class="form-control" id="campo2" id="campo1" placeholder="Digite o campo 2">	
		 			</div>
		 		</div>
		 		
		 		<div id="actions" class="row">
		 			<div class="col-md-12">
		 				<button type="submit" class="btn btn-primary">Enviar</button>
		 				<a href="#" class="btn btn-default">Ação secundária</a>
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