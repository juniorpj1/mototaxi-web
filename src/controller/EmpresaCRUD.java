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
	private static String LISTAR = "/cliente/empresaListar.jsp";
	private static String ESCOLHER_EMPRESA = "/cliente/escolherEmpresa.jsp";
	private static String INSERIR_OU_ALTERAR = "/cliente/empresaForm.jsp";
	private static String ERRO = "/publico/erro.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		EmpresaServico empresaService = ServicoFactory.criarEmpresaServico();

		String forward = "";
		String cmd = request.getParameter("cmd");

		if (cmd == null || cmd.equalsIgnoreCase(""))
			cmd = "listar";
		if (cmd.equalsIgnoreCase("listar")) {
			try {
				request.setAttribute("lista", empresaService.buscarTodos());
				forward = LISTAR;
			} catch (RuntimeException e) {
				request.setAttribute("erro", "Erro de execução: " + e.getMessage());
				forward = ERRO;
			}
			RequestDispatcher rd = request.getRequestDispatcher(forward);
			rd.forward(request, response);
		}

		else if (cmd.equalsIgnoreCase("editar")) {
			int cod = Integer.parseInt(request.getParameter("cod"));
			try {
			Empresa empr = empresaService.buscar(cod);
			if (empr != null) {
			request.setAttribute("empr", empr);
			forward = INSERIR_OU_ALTERAR;
			}
			else {
			request.setAttribute("lista", empresaService.buscarTodos());
			forward = LISTAR;
			}
			} catch (RuntimeException e) {
			request.setAttribute("Erro de execução: ", e.getMessage());
			forward = ERRO;
			}
			}
		
		else if (cmd.equalsIgnoreCase("escolherEmpresa")) {
			try {
			request.setAttribute("lista", empresaService.buscarTodos());
			forward = ESCOLHER_EMPRESA;
			} catch (RuntimeException e) {
			request.setAttribute("Erro de execução: ", e.getMessage());
			forward = ERRO;
			}
			}
		
		else if (cmd.equalsIgnoreCase("deletar")) {
			int cod = Integer.parseInt(request.getParameter("cod"));
			try {
				Empresa alb = empresaService.buscar(cod);
			if (alb != null) {
				empresaService.excluir(alb);
			}
			request.setAttribute("lista", empresaService.buscarTodos());
			forward = LISTAR;
			} catch (RuntimeException e) {
			request.setAttribute("erro", "Erro de execução: " + e.getMessage());
			forward = ERRO;
			}
			}
	}

}