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

<title>Quem Somos - Uberl�ndia Motot�xi</title>

<!--  +++++++++++ REFERENCIAS BASICAS DO BOOTSTRAP +++++++++++ -->
<%@ include file="/resources/includes/refs-bootstrap-inicio.jsp"%>
</head>
<body>
	<!--  +++++++++++ BARRA DE NAVEGACAO +++++++++++ -->
	<%@ include file="/resources/includes/barra-superior.jsp"%>

	<!--  +++++++++++ SECAO PRINCIPAL +++++++++++ -->

	<!-- Alterei o arquivo barra-superior / e a p�gina 'sobre' foi renomeada para 'quemSomos' -->
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>
						<strong>Quem Somos</strong>
					</h1>
					<p class="lead">Maior mototaxi online de uberl�ndia e regi�o,
						atendendo nossos clientes com agilidade e confian�a.</p>
					<p class="lead">
						H� mais de 2 anos trabalhando para oferecer o melhor servi�o de
						mototaxi e entregas o <strong>UBERL�NDIA MOTOT�XI</strong> conta
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
					<p class="lead">N�o h� dist�ncia que nos impe�a de oferecer o
						melhor servi�o para voc�, cliente.</p>
				</div>
				<div class="col-md-4">
					<i class="fa fa-5x fa-clock-o fa-fw pull-left"></i>
					<h2 class="text-center">O �nico 24 horas todos os dias.</h2>
					<p class="lead">
						Cliente <strong>Uberl�ndia Motot�xi&nbsp;</strong>pode solicitar a
						sua corrida em qualquer hora, de qualquer lugar.
					</p>
				</div>
				<div class="col-md-4">
					<i class="fa fa-4x fa-fw fa-group pull-left"></i>
					<h2>Cadastro para empresas</h2>
					<p class="lead">Nossos clientes que possuem login, tem acesso a
						suas corridas e podem avaliar cada uma, respectvamente. Tamb�m
						provemos com um cadastro de empresas, para aumento da capacidade e
						melhoria em nossos servi�os. Al�m de outras funcionalidades que
						aumentam a produtividade da sua empresa, como ver avalia��es dos
						Mototaxistas acima da m�dia.</p>
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