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
		 <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="text-center">Administrador</h1>
                        <p class="text-center">Seja bem-vindo! Por favor, escolha um caso de uso:</p>
                    </div>
                </div>
            </div>
        </div><div class="section">
        	<div class="container">
        		<div class="row">
        			<div class="col-md-12">
        				<ul class="list-group">
        					<li class="list-group-item">
        					<b><a href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=listar">UC004 - Gerenciar Mototaxistas<br></a></b>
        					</li>
        					
        					<li class="list-group-item">
        					<b><a href="<%=request.getContextPath()%>/cliente/EmpresaCRUD?cmd=listar">UC013 - Gerenciar Empresa<br></a></b>
        					</li>
        					
        					<li class="list-group-item">
        					<b>UC008 - Gerenciar Bandeirada</b>
        					</li>
        					
        					<li class="list-group-item">
        					<b><a href="<%=request.getContextPath()%>/administrador/motoBuscar.jsp">UC010 - Consultar Mototaxista por nome</a></b>
        					</li>
        					
        					<li class="list-group-item">
        					<b><a href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=listaemp">UC001 - Vizualizar corridas do Mototaxista por período entre datas</a></b>
        					</li>
        					
        					<li class="list-group-item">
        					<b><a href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=listar2"> UC005 - Vizualizar média de notas para um Mototaxista</a></b>
        					</li>
        					
        					<li class="list-group-item">
        					<b><a href="<%=request.getContextPath()%>/cliente/AvaliacaoCRUD?cmd=listar"> UC006 - Cadastrar avaliação</a></b>
        					</li>
        					
        					<li class="list-group-item">
        					<b><a href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=listaemp"> UC003 - Vizualizar Mototaxistas acima da média</a></b>
        					</li>
        					
        					<li class="list-group-item">
        					<b><a href="<%=request.getContextPath()%>/cliente/MototaxistaServlet2?cmd=listaemp"> UC002- Vizualizar Mototaxistas abaixo da média</a></b>
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