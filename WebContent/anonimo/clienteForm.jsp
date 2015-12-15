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
<meta name="author" content="Diego Santos">
<meta charset="UTF-8">

<title>Uberlândia Mototáxi - Cadastro de Novos Clientes</title>

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
						<h1>Cadastro de Clientes</h1>
						<p>Por gentileza, preencha os dados solicitados para que o
							cadastro seja efetivado.</p>
					</div>
				</div>
			</div>
		</div>

		<div class="section">
			<div class="container">

				<form id="formulario"  method="post" action="<%=request.getContextPath()%>/cliente/ClienteCRUD" name="formEmpr">

					<div class="row">
						<div style="visibility: hidden;" class="form group col-md-6">
							<label for="codCliente"> Código: </label> <input type="text"
								name="codCliente" value="${cliente.codCliente}"
								class="form-control" id="codCliente" readonly="readonly" /> <br />
						</div>
					</div>

					<div class="row">
						<div class="form group col-md-6">
							<label for="nome"> Nome do cliente: </label> <input type="text"
								name="nome" value="${cliente.nome}" class="form-control"
								id="nome" placeholder="Digite o nome do cliente" /> <br />
						</div>
					</div>
					<!-- required x-moz-errormessage="Ops. Não esqueça de preencher este campo."	 -->
					<div class="row">
						<div class="form group col-md-6">
							<label for="cpf"> CPF: </label> 
							<input type="text" name="cpf" value="${cliente.cpf}" class="form-control" id="cpf" placeholder="Digite o CPF - somente números" />
							 <span>Campo requerido, informe um CPF válido</span>
						</div>
					</div>

					<div class="row">
						<div class="form group col-md-6">
							<label for="senha"> Senha: </label> <input type="text"
								name="senha" value="${cliente.senha}" class="form-control"
								id="senha" placeholder="Digite uma senha de 6 digitos" /> <br />
						</div>
					</div>

					<div class="row">
						<div class="form group col-md-6">
							<label for="telefone"> Telefone de contato: </label> <input
								type="text" name="telefone" value="${cliente.telefone}"
								class="form-control" id="telefone"
								placeholder="Digite um telefone de contato - somente números" />
							<br />
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