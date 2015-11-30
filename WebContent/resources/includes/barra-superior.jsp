		<!--  +++++++++++ BARRA DE NAVEGACAO +++++++++++ -->
		 
        <link rel="icon" href="http://localhost:8080/1-mototaxi-web/resources/img/icone-uberlandia-mototaxi.ico">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="http://localhost:8080/1-mototaxi-web/resources/css/2.css" rel="stylesheet" type="text/css">


        <div class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                     <a href="/1-mototaxi-web/index.jsp" id="logo"><img height="20" alt="Brand" src="http://localhost:8080/1-mototaxi-web/resources/img/logo.jpg" class="img-thumbnail"></a>
                </div>
                <div class="collapse navbar-collapse" id="navbar-ex-collapse">
                    <ul class="nav navbar-nav navbar-right">
                       
                      	 <li>
                            <a href="/1-mototaxi-web/administrador.jsp">Administrador<br></a>
                        </li>
                        
                         <li>
                            <a href="/1-mototaxi-web/anonimo.jsp">Anônimo<br></a>
                        </li>
                        
                        <li>
                            <a href="/1-mototaxi-web/cliente.jsp">Cliente<br></a>
                        </li>
                        
                        <li>
                            <a href="/1-mototaxi-web/sobre.jsp">Sobre nós<br></a>
                        </li>
                    </ul>
                   
                  <!--  <a href="/1-mototaxi-web/cliente/MotoTaxistaCRUD?cmd=escolherEmpresa">Administrador<br></a> -->
        
                </div>
            </div>
        </div>
        <div class="section">
            <div></div>
        </div> 
        
        
       
<!-- +++++++++++++++++++++++++++ MODELO ANTERIOR +++++++++++++++++++++++++++
        <link rel="icon" href="resources/img/icone-uberlandia-mototaxi.ico">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="resources/css/2.css" rel="stylesheet" type="text/css">


        <div class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                     <a href="<%=request.getContextPath()%>/index.jsp" id="logo"><img height="20" alt="Brand" src="resources/img/logo.jpg" class="img-thumbnail"></a>
                </div>
                <div class="collapse navbar-collapse" id="navbar-ex-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="administrador">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Administrador&nbsp;<i class="fa fa-caret-down"></i></a>
                            <ul class="dropdown-menu" role="menu">
         
                                <li>
                                    <a href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=escolherEmpresa">Manter Mototaxista</a>
                                </li>
                                
                                 <li>
                                    <a href="<%=request.getContextPath()%>/cliente/EmpresaCRUD">Manter Empresa</a>
                                </li>
                                <li>
                                    <a href="cliente/MotoTaxistaCRUD">Mostrar a média</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="uberlandia-mototaxi-listagem.html">Manutenção de Moto Taxistas</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">Sobre nós</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/cliente/MotoTaxistaCRUD?cmd=escolherEmpresa">Contate-nos<br></a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="cliente">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Cliente&nbsp;<i class="fa fa-caret-down"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li>
                                    <a href="uberlandia-mototaxi-cadastro-cliente.html">Cadastre-se</a>
                                </li>
                                <li>
                                    <a href="uberlandia-mototaxi-login.html">Login</a>
                                </li>
                                <li>
                                    <a href="#">Valor da corrida</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">Dados pessoais</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">One more separated link</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="section">
            <div></div>
        </div>-->