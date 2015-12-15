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
		
		<!--  +++++++++++ SECAO PRINCIPAL +++++++++++ 
		 <div id="margem-pequena">
		 	<div id="main" class="container-fluid">
		 		<h3 class="page-header"> Entre com os dados do Mototaxista </h3>
		 	</div>-->
	<div id="main" class="container-fluid">
		 	<div id="margem-pequena">
		 		<div class="row">
				<div class="col-md-12">
					<h2> Escolha a empresa</h2>
				</div>
				</div>
			
			
			<div id="list" class="row">
				 
				    <div class="table-responsive col-md-12">
				        <table class="table table-striped" cellspacing="0" cellpadding="0">
				            <thead>
				                <tr>
				                     <th>Código</th>
				                   	 <th>Nome fantasia</th>
									 <th>Razão social</th>
									 <th>Telefone</th>
									 <th>E-mail</th>
									 <th>CNPJ</th>
									 <th>Logradouro</th>
									 <th>Número</th>
									 <th>Bairro</th>
									 <th>CEP</th>
				                    <th class="actions">Ação</th>
				                 </tr>
				            </thead>
				            <tbody>
				 				<c:forEach items="${lista}" var="x">
				                <tr>
				                    <td>${x.codEmpresa}</td>
									<td>${x.nomeFantasia}</td>
									<td>${x.razaoSocial}</td>
									<td>${x.telefone}</td>
									<td>${x.email}</td>
									<td>${x.cnpj}</td>
									<td>${x.logradouro}</td>
									<td>${x.numero}</td>
									<td>${x.bairro}</td>
									<td>${x.cep}</td>
				                    <td class="actions">
				                        <a class="btn btn-success btn-xs" href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=novo&codEmpresa=${x.codEmpresa}">Escolher este</a>
				                       <!--  <a class="btn btn-warning btn-xs" href="edit.html">Editar</a>
				                        <a class="btn btn-danger btn-xs"  href="#" data-toggle="modal" data-target="#delete-modal">Excluir</a> -->
				                    </td>
				                </tr>
				 		 </c:forEach>
				            </tbody>
				         </table>
				 
				     </div>
				    
				 </div> <!-- /#list -->
				 
					<!--  +++++++++++ RODAPE +++++++++++ -->
					 <%@ include file="/resources/includes/rodape.jsp"%> 
					
					 <!--  +++++++++++ REFERENCIAS ADICIONAIS DO BOOTSTRAP +++++++++++ -->
					 <%@ include file="/resources/includes/refs-bootstrap-final.jsp"%> 
					 
					 		 <!--  +++++++++++ CODIGO DA JANELA MODAL DE CONFIRMAR EXCLUSAO +++++++++++ -->
					 <%@ include file="/resources/includes/confirmar-exclusao-modal.jsp"%> 
			 </div>
		</div>
	</body>
</html>