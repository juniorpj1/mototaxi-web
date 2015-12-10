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
		
		<!--  +++++++++++ SECAO PRINCIPAL +++++++++++-->
		
		  <div class="section">
      		<div class="container">
       			 <div class="row">
         			 <div class="col-md-12">
           				 <h1 class="text-center">UC013 - Manter Empresa</h1>
            			 <p class="text-center">Seja bem-vindo! Por favor, escolha uma das Empresas para efetuar as manutenções desejadas ou adicione uma nova:</p>
          			</div>
       			 </div>
      		</div>
    	</div>
    	
    	
    	<div id="main" class="container-fluid">
			<div id="top" class="row">
				<div class="col-md-3">
    				<h2>Empresas cadastradas:</h2>
				</div>
				
				<div class="col-md-3">
				
				</div>
				
				<div class="col-md-3">
    				<a class="btn btn-success btn-xs pull-right h2" href="<%=request.getContextPath()%>/cliente/EmpresaCRUD?cmd=novo&codEmpresa=${x.codEmpresa}">Adicionar nova Empresa</a>
				</div>
			</div>
 		</div>

	
	<!--  +++++++++ LISTAGEM ++++++++ -->
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
				 <th colspan="2">Ação</th> 
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
				
				<td>
				<a class="btn btn-success btn-xs" href="<%=request.getContextPath()%>/cliente/EmpresaCRUD?cmd=visualizar&cod=${x.codEmpresa}">Visualizar</a>
				<a class="btn btn-warning btn-xs" href="<%=request.getContextPath()%>/cliente/EmpresaCRUD?cmd=editar&cod=${x.codEmpresa}">Editar</a>
				<a class="btn btn-danger btn-xs" href="<%=request.getContextPath()%>/cliente/EmpresaCRUD?cmd=deletar&cod=${x.codEmpresa}">Excluir</a>
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

</body>
</html>