package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.MotoTaxista;
import servico.MotoTaxistaServico;
import servico.ServicoFactory;

@WebServlet("/cliente/MotoTaxistas2CRUD")
public class MotoTaxistas2CRUD extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static String LISTAR = "/administrador/mototaxistaProcurarPorNome.jsp";
	private static String ERRO = "/publico/erro.jsp";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		MotoTaxistaServico motoService = ServicoFactory.criarMotoTaxistaServico();

		String forward = "";

		String nome = request.getParameter("nome");

		try {

			List<MotoTaxista> moto = motoService.buscarPorNome(nome);

			request.setAttribute("moto", moto);
			forward = LISTAR;

		} catch (RuntimeException e) {
			request.setAttribute("erro", "Erro de execução: " + e.getMessage());
			forward = ERRO;
		}
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}

}
