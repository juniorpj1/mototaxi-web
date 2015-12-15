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
<meta name="author" content="Aparício Pedrosa Franco Junior">
<meta charset="UTF-8">

<title>Uberlândia Mototáxi</title>

<!--  +++++++++++ REFERENCIAS BASICAS DO BOOTSTRAP +++++++++++ -->
<%@ include file="/resources/includes/refs-bootstrap-inicio.jsp"%>
</head>

<body>
	<!--  +++++++++++ BARRA DE NAVEGACAO +++++++++++ -->
	<%@ include file="/resources/includes/barra-superior.jsp"%>

	<div id="main" class="container-fluid">
		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Cadastro da Avaliação</h1>
						<p>Por gentileza, preencha os dados solicitados para que o
							cadastro seja efetivado.</p>
					</div>
				</div>
			</div>
		</div>

		<div class="section">
			<div class="container">

				<form method="post"
					action="<%=request.getContextPath()%>/cliente/AvaliacaoCRUD"
					name="formEmpr">

					<div class="row">
						<div class="form group col-md-6">
							<label for="codAvaliacao"> Código: </label> <input type="text"
								name="codAvaliacao" value="${avaliacao.codAvaliacao}"
								class="form-control" id="codAvaliacao" readonly="readonly" /> <br />
						</div>
					</div>

					<div class="row">
						<div class="form group col-md-6">
							<label for="nota"> Nota da Avaliação: </label> <input type="text"
								name="nota" value="${avaliacao.nota}" class="form-control"
								id="nota" placeholder="Digite o valor da nota" /> <br />
						</div>
					</div>

					<div class="row">
						<div class="form group col-md-6">
							<label for="descricao"> Descrição: </label> <input type="text"
								name="descricao" value="${avaliacao.descricao}"
								class="form-control" id="descricao"
								placeholder="Digite uma frase pequena" /> <br />
						</div>
					</div>
					
					<div class="row">
						<div class="form group col-md-6">
							<label for="nomemot"> Nome do Mototaxista: </label> <input type="text"
								name="nomemot" 
								class="form-control" id="nomemot"
								placeholder="Digite o nome do Mototaxista" /> <br />
						</div>
					</div>
					
					<div class="row">
						<div class="form group col-md-6">
							<label for="nomemot"> Nome do Cliente: </label> <input type="text"
								name="nomecli" 
								class="form-control" id="nomecli"
								placeholder="Digite o nome do Cliente" /> <br />
						</div>
					</div>
					
					<div id="actions" class="row">
						<div class="col-md-12">
							<button type="submit" class="btn btn-success btn-xs">Enviar</button>
							<button type="reset" class="btn btn-warning btn-xs">Limpar</button>
						</div>
					</div>

				</form>
			</div>
		</div>
		'
	</div>
</body>
</html>