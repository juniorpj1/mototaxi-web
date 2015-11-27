package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servico.MotoTaxistaServico;
import servico.ServicoFactory;

@WebServlet("/cliente/MotoTaxistas2CRUD")
public class MotoTaxistas2CRUD extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static String LISTAR = "/cliente/motoBuscar.jsp";
	private static String ERRO = "/publico/erro.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MotoTaxistaServico motoTaxistaServico = ServicoFactory.criarMotoTaxistaServico();
		
		
		String forward = "";
		String cmd = (request.getParameter("moto"));

		if (cmd == null || cmd.equalsIgnoreCase(""))
			cmd = "listar";
		
		if (cmd.equalsIgnoreCase("listar")) {
			String nome = (request.getParameter("nome"));
			try {
				request.setAttribute("lista", motoTaxistaServico.buscarPorNome(nome));
				forward = LISTAR;
			} catch (RuntimeException e) {
				request.setAttribute("erro", "Erro de execução: " + e.getMessage());
				forward = ERRO;
			}
		}
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}
}