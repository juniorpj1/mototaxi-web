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
		
		<title>Uberlândia Mototáxi</title>

		<!--  +++++++++++ REFERENCIAS BASICAS DO BOOTSTRAP +++++++++++ -->
		<%@ include file="/resources/includes/refs-bootstrap-inicio.jsp"%> 
	</head>
	<body>
		<!--  +++++++++++ BARRA DE NAVEGACAO +++++++++++ -->
		 <%@ include file="/resources/includes/barra-superior.jsp"%> 
		 
		 <!--  +++++++++++ SECAO PRINCIPAL +++++++++++ -->
		 
		  <div id="margem-grande">
		 	<div class="container">
		 		<div class="row">
		 			<div class="col-lg-8 col-lg-offset-2 centered">
		 				<h1>Ocorreu um erro:</h1>
		 					<p>${erro}</p>
		 					
		 					<a class="btn btn-success btn-xs" href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=listar">Voltar (MotoTaxista)<br></a>
		 					<a class="btn btn-success btn-xs" href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=listar">Voltar (Empresa)<br></a>
		 					
		 			</div>
		 		</div>
		 	</div>
		 </div>
	</body>
</html>