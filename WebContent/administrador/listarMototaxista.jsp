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
           				 <h1 class="text-center">UC004 - Manter Moto Taxista</h1>
            			 <p class="text-center">Seja bem-vindo! Por favor, escolha um dos Mototaxistas para efetuar as manutenções desejadas ou adicione um novo:</p>
          			</div>
       			 </div>
      		</div>
    	</div>
    	
    	<!--  +++++++++++ SECAO PRINCIPAL +++++++++++ -->
		<div id="main" class="container-fluid">
			<div id="top" class="row">
				<div class="col-md-3">
    				<h2>Moto Taxistas cadastrados:</h2>
				</div>
				
				<div class="col-md-3">
    			<!-- 
    			
    			<div class="col-md-6">
     				<div class="input-group h2">
        				 <input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar Itens">
         				 <span class="input-group-btn">
                		 	<button class="btn btn-primary" type="submit">
                     	 	<span class="glyphicon glyphicon-search"></span>
                 		 </button>
        			 	 </span>
     				</div>
				</div>
    			
    			 -->	
				</div>
				
				<div class="col-md-3">
    				<a class="btn btn-success btn-xs pull-right h2" href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=escolherEmpresa"
				 >Adicionar novo Moto Taxista</a>
				</div>
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
									<th colspan="2">Ação</th> 
				                 </tr>
				            </thead>
				            <tbody>
				 				<c:forEach items="${lista}" var="x">
				                <tr>
				                    <td>${x.codMotoTaxista}</td>
									<td>${x.nome}</td>
									<td>${x.placa}</td>
									<td>
										<c:if
										test="${x.disponivel == true}">
    									Sim
									</c:if>
									<c:if
										test="${x.disponivel == false}">
    									Não
									</c:if>
									</td>					
									<td>${x.empresa.nomeFantasia}</td>
									
				                    <td class="actions">
				                        <a class="btn btn-success btn-xs" href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=visualizar&cod=${x.codMotoTaxista}">Visualizar</a>
				                        <a class="btn btn-warning btn-xs" href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=editar&cod=${x.codMotoTaxista}">Editar</a>
				                        <a class="btn btn-danger btn-xs" href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=deletar&cod=${x.codMotoTaxista}"> 
										 <!-- <a class="btn btn-danger btn-xs"  data-toggle="modal" data-target="#delete-modal" data- href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=deletar&cod=${x.codMotoTaxista}">-->	
		  				                   
				                        Excluir</a>
				                    </td>
				                </tr>
							 </c:forEach>
				            </tbody>
				         </table>
				 
				     </div>
				    
				 </div> <!-- /#list -->
      </div>


		 <!--  +++++++++++ RODAPE +++++++++++ -->
		 <%@ include file="/resources/includes/rodape.jsp"%> 
		
		 <!--  +++++++++++ REFERENCIAS ADICIONAIS DO BOOTSTRAP +++++++++++ -->
		 <%@ include file="/resources/includes/refs-bootstrap-final.jsp"%> 
		 
		 <!--  +++++++++++ CODIGO DA JANELA MODAL DE CONFIRMAR EXCLUSAO +++++++++++ 
		 <%@ include file="/resources/includes/confirmar-exclusao-modal.jsp"%>-->
		
	</body>
</html>