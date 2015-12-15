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

<title>Quem Somos - Uberlândia Mototáxi</title>

<!--  +++++++++++ REFERENCIAS BASICAS DO BOOTSTRAP +++++++++++ -->
<%@ include file="/resources/includes/refs-bootstrap-inicio.jsp"%>
</head>
<body>
	<!--  +++++++++++ BARRA DE NAVEGACAO +++++++++++ -->
	<%@ include file="/resources/includes/barra-superior.jsp"%>

	<!--  +++++++++++ SECAO PRINCIPAL +++++++++++ -->

	<!-- Alterei o arquivo barra-superior / e a página 'sobre' foi renomeada para 'quemSomos' -->
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>
						<strong>Quem Somos</strong>
					</h1>
					<p class="lead">Maior mototaxi online de uberlândia e região,
						atendendo nossos clientes com agilidade e confiança.</p>
					<p class="lead">
						Há mais de 2 anos trabalhando para oferecer o melhor serviço de
						mototaxi e entregas o <strong>UBERLÂNDIA MOTOTÁXI</strong> conta
						com uma frota de motos novas e com motoristas habilitados e
						treinados para oferecer o melhor atendimentos aos nossos clientes.
					</p>
				</div>


			</div>

			<div class="row">
				<div class="col-md-12">

					<h1>
						<strong> Nosso Diferencial</strong>
					</h1>
				</div>
				<div class="col-md-4">
					<div class="row"></div>


					<i class="fa fa-5x fa-flip-horizontal fa-fw fa-smile-o pull-left"></i>
					<h2>Presente em todos os bairros.</h2>
					<p class="lead">Não há distância que nos impeça de oferecer o
						melhor serviço para você, cliente.</p>
				</div>
				<div class="col-md-4">
					<i class="fa fa-5x fa-clock-o fa-fw pull-left"></i>
					<h2 class="text-center">O único 24 horas todos os dias.</h2>
					<p class="lead">
						Cliente <strong>Uberlândia Mototáxi&nbsp;</strong>pode solicitar a
						sua corrida em qualquer hora, de qualquer lugar.
					</p>
				</div>
				<div class="col-md-4">
					<i class="fa fa-4x fa-fw fa-group pull-left"></i>
					<h2>Cadastro para empresas</h2>
					<p class="lead">Nossos clientes que possuem login, tem acesso a
						suas corridas e podem avaliar cada uma, respectvamente. Também
						provemos com um cadastro de empresas, para aumento da capacidade e
						melhoria em nossos serviços. Além de outras funcionalidades que
						aumentam a produtividade da sua empresa, como ver avaliações dos
						Mototaxistas acima da média.</p>
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