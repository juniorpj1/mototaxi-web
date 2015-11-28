package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.MotoTaxista;
import servico.MotoTaxistaServico;
import servico.ServicoFactory;

@WebServlet("/cliente/MotoTaxistaCRUD")
public class MotoTaxistaCRUD extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String LISTAR = "/cliente/motoListar.jsp";
	private static String LISTAR_MEDIA = "/cliente/mediaListar.jsp";
	private static String ERRO = "/publico/erro.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		MotoTaxistaServico motoService = ServicoFactory.criarMotoTaxistaServico();

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
	}

}