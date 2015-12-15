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
		 
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="text-center">Cliente</h1>
            <p class="text-center">Seja bem-vindo! Por favor, escolha um caso de uso:</p>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <ul class="list-group">
              <li class="list-group-item">
                <b>UC007 - Solicitar Corrida</b>
              </li>
              <li class="list-group-item">
                <b>UC010 - Pesquisar Mototaxistas</b>
              </li>
              <li class="list-group-item">
                <b>UC011 - Pesquisar chamado</b>
              </li>
              <li class="list-group-item">
                <b>UC002 - Mostrar Mototaxistas abaixo da média</b>
              </li>
              <li class="list-group-item">
                <b>UC005 - Mostrar média de um Mototaxista</b>
              </li>
              <li class="list-group-item">
                <b>UC003 - Mostrar Mototaxistas acima da média</b>
              </li>
            </ul>
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