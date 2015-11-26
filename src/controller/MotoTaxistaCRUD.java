package controller;

	import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.MotoTaxista;
import servico.EmpresaServico;
import servico.MotoTaxistaServico;
import servico.ServicoFactory;	

	@WebServlet("/cliente/MotoTaxistaCRUD")
	public class MotoTaxistaCRUD extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String INSERIR_OU_ALTERAR = "/cliente/motoForm.jsp";
	private static String LISTAR = "/cliente/motoListar.jsp";
	private static String ESCOLHER_EMPRESA = "/cliente/mototaxistaEscolherEmpresa.jsp";
	private static String ERRO = "/publico/erro.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MotoTaxistaServico mototaxistaServico = ServicoFactory.criarMotoTaxistaServico();
		EmpresaServico empresaServico = ServicoFactory.criarEmpresaServico();

		String forward = "";
		String cmd = request.getParameter("cmd");
			if (cmd == null || cmd.equalsIgnoreCase(""))
				cmd = "listar";

			if (cmd.equalsIgnoreCase("deletar")) {
				int cod = Integer.parseInt(request.getParameter("cod"));
					try {
						MotoTaxista mot = mototaxistaServico.buscar(cod);
						if (mot != null) {
							mototaxistaServico.excluir(mot);
						}
							request.setAttribute("lista", mototaxistaServico.buscarTodos());
							forward = LISTAR;
					} catch (RuntimeException e) {
						request.setAttribute("erro", "Erro de execução: " + e.getMessage());
						forward = ERRO;
}
					}


			else if (cmd.equalsIgnoreCase("editar")) {
				int cod = Integer.parseInt(request.getParameter("cod"));
					try {
						MotoTaxista mot = mototaxistaServico.buscar(cod);
							if (mot != null) {
								request.setAttribute("mot", mot);
								forward = INSERIR_OU_ALTERAR;
							}
							else {
								request.setAttribute("lista", mototaxistaServico.buscarTodos());
								forward = LISTAR;
							}
					} catch (RuntimeException e) {
						request.setAttribute("Erro de execução: ", e.getMessage());
						forward = ERRO;
					}
			}

			else if (cmd.equalsIgnoreCase("mototaxistaEscolherEmpresa")) {
				try {
					request.setAttribute("lista", empresaServico.buscarTodos());
					forward = ESCOLHER_EMPRESA;
				} catch (RuntimeException e) {
					request.setAttribute("Erro de execução: ", e.getMessage());
					forward = ERRO;
				}
			}

			else if (cmd.equalsIgnoreCase("listar")) {
				try {
					request.setAttribute("lista", mototaxistaServico.buscarTodos());
					forward = LISTAR;
				} catch (RuntimeException e) {
					request.setAttribute("erro", "Erro de execução: " + e.getMessage());
					forward = ERRO;
				}
			}

			else if (cmd.equalsIgnoreCase("novo")) {
				int codEmpresa = Integer.parseInt(request.getParameter("codEmpresa"));
					try {
						MotoTaxista mot = new MotoTaxista();
						mot.setEmpresa(empresaServico.buscar(codEmpresa));
						request.setAttribute("mot", mot);
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
		MotoTaxistaServico mototaxistaServico = ServicoFactory.criarMotoTaxistaServico();
		String forward = "";
		
			try {
				MotoTaxista mot = instanciar(request);
				mototaxistaServico.inserirAtualizar(mot);
				request.setAttribute("lista", mototaxistaServico.buscarTodos());
				forward = LISTAR;
			} catch (RuntimeException e) {
				request.setAttribute("erro", e.getMessage());
				forward = ERRO;
			}
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}

	private MotoTaxista instanciar(HttpServletRequest req) {
		EmpresaServico empresaServico = ServicoFactory.criarEmpresaServico();
		String aux;
		Boolean aux2 = false;
		MotoTaxista x = new MotoTaxista();
		aux = req.getParameter("codMotoTaxista");
			if (aux != null && !aux.isEmpty())
				x.setCodMotoTaxista(Integer.parseInt(aux));
				aux = req.getParameter("nome");
				x.setNome(aux);
				aux = req.getParameter("placa");
				x.setPlaca(aux);
				aux = req.getParameter("disponivel");
				x.setDisponivel(aux2);
				aux = req.getParameter("codEmpresa");
				x.setEmpresa(empresaServico.buscar(Integer.parseInt(aux)));
				return x;
			}
		}