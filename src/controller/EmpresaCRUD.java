package controller;

	import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.Empresa;
import servico.EmpresaServico;
import servico.ServicoFactory;	

	@WebServlet("/cliente/EmpresaCRUD")
	public class EmpresaCRUD extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String INSERIR_OU_ALTERAR = "/cliente/empresaForm.jsp";
	private static String LISTAR = "/cliente/empresaListar.jsp";
	private static String ERRO = "/publico/erro.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmpresaServico empresaServico = ServicoFactory.criarEmpresaServico();

		String forward = "";
		String cmd = request.getParameter("cmd");
			if (cmd == null || cmd.equalsIgnoreCase(""))
				cmd = "listar";

			if (cmd.equalsIgnoreCase("deletar")) {
				int cod = Integer.parseInt(request.getParameter("empr"));
					try {
						Empresa empr = empresaServico.buscar(cod);
						if (empr != null) {
							empresaServico.excluir(empr);
						}
							request.setAttribute("lista", empresaServico.buscarTodos());
							forward = LISTAR;
					} catch (RuntimeException e) {
						request.setAttribute("erro", "Erro de execução: " + e.getMessage());
						forward = ERRO;
					}
			}


			else if (cmd.equalsIgnoreCase("editar")) {
				int cod = Integer.parseInt(request.getParameter("cod"));
					try {
						Empresa empr = empresaServico.buscar(cod);
							if (empr != null) {
								request.setAttribute("empr", empr);
								forward = INSERIR_OU_ALTERAR;
							}
							else {
								request.setAttribute("lista", empresaServico.buscarTodos());
								forward = LISTAR;
							}
					} catch (RuntimeException e) {
						request.setAttribute("Erro de execução: ", e.getMessage());
						forward = ERRO;
					}
			}

			else if (cmd.equalsIgnoreCase("listar")) {
				try {
					request.setAttribute("lista", empresaServico.buscarTodos());
					forward = LISTAR;
				} catch (RuntimeException e) {
					request.setAttribute("erro", "Erro de execução: " + e.getMessage());
					forward = ERRO;
				}
			}

			else if (cmd.equalsIgnoreCase("novo")) {
				//int codEmpresa = Integer.parseInt(request.getParameter("codEmpresa"));
					try {
						Empresa empr = new Empresa();
					//	mot.setEmpresa(empresaServico.buscar(codEmpresa));
						request.setAttribute("empr", empr);
						forward = INSERIR_OU_ALTERAR;
					} catch (RuntimeException e) {
						request.setAttribute("erro", "Erro de execução: " + e.getMessage());
						forward = ERRO;
					}
				}
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		EmpresaServico empresaServico = ServicoFactory.criarEmpresaServico();
		String forward = "";
		
			try {
				Empresa empr = instanciar(request);
				empresaServico.inserirAtualizar(empr);
				request.setAttribute("lista", empresaServico.buscarTodos());
				forward = LISTAR;
			} catch (RuntimeException e) {
				request.setAttribute("erro", e.getMessage());
				forward = ERRO;
			}
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}

	private Empresa instanciar(HttpServletRequest req) {
		//EmpresaServico empresaServico = ServicoFactory.criarEmpresaServico();
		String aux;
		Empresa x = new Empresa();
		aux = req.getParameter("codEmpresa");
			if (aux != null && !aux.isEmpty())
				x.setCodEmpresa(Integer.parseInt(aux));
				aux = req.getParameter("nomeFantasia");
				x.setNomeFantasia(aux);
				
				aux = req.getParameter("razaoSocial");
				x.setRazaoSocial(aux);
				
				aux = req.getParameter("telefone");
				x.setTelefone(aux);
				
				aux = req.getParameter("email");
				x.setEmail(aux);
				
				aux = req.getParameter("cnpj");
				x.setCnpj(aux);
				
				aux = req.getParameter("logradouro");
				x.setLogradouro(aux);
				
				aux = req.getParameter("numero");
				x.setNumero(aux);
				
				aux = req.getParameter("bairro");
				x.setBairro(aux);
				
				aux = req.getParameter("cep");
				x.setCep(aux);
				
				/*aux = req.getParameter("codEmpresa");
				x.setEmpresa(empresaServico.buscar(Integer.parseInt(aux)));*/
				return x;
			}
		}