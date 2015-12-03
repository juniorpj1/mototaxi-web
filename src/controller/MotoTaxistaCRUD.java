package controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.Chamado;
import dominio.Empresa;
import dominio.MotoTaxista;
import servico.EmpresaServico;
import servico.MotoTaxistaServico;
import servico.ServicoFactory;

@WebServlet("/cliente/MotoTaxistaCRUD")
public class MotoTaxistaCRUD extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String LISTAR = "/cliente/motoListar.jsp";
	private static String LISTAR_MEDIA = "/cliente/mediaListar.jsp";
	private static String LISTAR_EMPRESA = "/cliente/empListar.jsp";
	private static String LISTAR_CHAMADO = "/cliente/chamListar.jsp";
	private static String FORM_EMPRESA = "/cliente/formEmpresa.jsp";
	private static String ERRO = "/publico/erro.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		MotoTaxistaServico motoService = ServicoFactory.criarMotoTaxistaServico();
		EmpresaServico empService = ServicoFactory.criarEmpresaServico();

		String forward = "";
		String cmd = request.getParameter("cmd");

		if (cmd == null || cmd.equalsIgnoreCase(""))
			cmd = "listar";

		if (cmd.equalsIgnoreCase("listar")) {
			try {
				request.setAttribute("lista", motoService.buscarTodos());
				forward = LISTAR;
			} catch (RuntimeException e) {
				request.setAttribute("erro", "Erro de execução: " + e.getMessage());
				forward = ERRO;
			}
			RequestDispatcher rd = request.getRequestDispatcher(forward);
			rd.forward(request, response);
		}

		else if (cmd.equalsIgnoreCase("mediacalc")) {
			int cod = Integer.parseInt(request.getParameter("cod"));

			try {
				MotoTaxista mots = motoService.buscar(cod);
				if (mots != null) {
					request.setAttribute("nome", motoService.buscar(cod).getNome());
					request.setAttribute("media", motoService.buscar(cod).media());
					forward = LISTAR_MEDIA;
				}

			} catch (RuntimeException e) {
				request.setAttribute("erro", "Erro de execução: " + e.getMessage());
				forward = ERRO;
			}

			RequestDispatcher rd = request.getRequestDispatcher(forward);
			rd.forward(request, response);
		}

		else if (cmd.equalsIgnoreCase("listaemp")) {
			try {
				request.setAttribute("listaemp", empService.buscarTodos());
				forward = LISTAR_EMPRESA;
			} catch (RuntimeException e) {
				request.setAttribute("erro", "Erro de execução: " + e.getMessage());
				forward = ERRO;
			}
			RequestDispatcher rd = request.getRequestDispatcher(forward);
			rd.forward(request, response);
		}

		else if (cmd.equalsIgnoreCase("chamados")) {
			int cod = Integer.parseInt(request.getParameter("cod"));

			try {
				Empresa empresa = empService.buscar(cod);
				request.setAttribute("cod", empresa.getCodEmpresa());
				forward = FORM_EMPRESA;
			} catch (RuntimeException e) {
				request.setAttribute("erro", "Erro de execução: " + e.getMessage());
				forward = ERRO;
			}
			RequestDispatcher rd = request.getRequestDispatcher(forward);
			rd.forward(request, response);
		}
	}

	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int x = Integer.parseInt(request.getParameter("cod"));

		EmpresaServico empService = ServicoFactory.criarEmpresaServico();
		String forward = "";

		String dataEmTexto = request.getParameter("dataInicial");
		String dataEmTexto2 = request.getParameter("dataFinal");

		try {
			Empresa teste = empService.buscar(x);
			List<Chamado> lista1 = teste.corridasPorPeriodo(new Date(dataEmTexto), new Date(dataEmTexto2));

			request.setAttribute("lista", lista1);
			forward = LISTAR_CHAMADO;
		} catch (RuntimeException e) {
			request.setAttribute("erro", "Erro de execução: " + e.getMessage());
			forward = ERRO;
		}
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);

	}

}
