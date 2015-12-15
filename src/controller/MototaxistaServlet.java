package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.Empresa;
import dominio.MotoTaxista;
import servico.EmpresaServico;
import servico.ServicoFactory;

@WebServlet("/cliente/MototaxistaServlet")
public class MototaxistaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String LISTAR_MEDIA_ACIMA = "/administrador/mediaAcima.jsp";
	private static String LISTAR_EMPRESA = "/administrador/empresaListar.jsp";
	private static String FORM_MEDIA_ACIMA = "/administrador/mediaAcimaForm.jsp";
	private static String ERRO = "/publico/erro.jsp";
	
	public MototaxistaServlet() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		EmpresaServico empresaServico = ServicoFactory.criarEmpresaServico();
		
		// Listar todas as empresas - Aparício - UC05
				
		String forward = "";
		String cmd = request.getParameter("cmd");
		
		if (cmd.equalsIgnoreCase("listaemp")) {
					try {
						request.setAttribute("lista", empresaServico.buscarTodos());
						forward = LISTAR_EMPRESA;
					} catch (RuntimeException e) {
						request.setAttribute("erro", "Erro de execução: " + e.getMessage());
						forward = ERRO;
					}
					RequestDispatcher rd = request.getRequestDispatcher(forward);
					rd.forward(request, response);
				}

				// Listar chamados entre períodos - Aparício - UC05
				else if (cmd.equalsIgnoreCase("acimamedia")) {
					int cod = Integer.parseInt(request.getParameter("cod"));

					try {
						Empresa empresa = empresaServico.buscar(cod);
						request.setAttribute("cod", empresa.getCodEmpresa());
						forward = FORM_MEDIA_ACIMA;
					} catch (RuntimeException e) {
						request.setAttribute("erro", "Erro de execução: " + e.getMessage());
						forward = ERRO;
					}
					RequestDispatcher rd = request.getRequestDispatcher(forward);
					rd.forward(request, response);
				}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		EmpresaServico empresaServico = ServicoFactory.criarEmpresaServico();
		
		String forward = "";

		Double mediaD = Double.parseDouble(request.getParameter("media1"));

		try {
			int x = Integer.parseInt(request.getParameter("cod"));
			Empresa empresa1 = empresaServico.buscar(x);
			List<MotoTaxista> lista2 = empresa1.mototaxistasComMediaAcimaDe(mediaD);
			request.setAttribute("lista2", lista2);
			forward = LISTAR_MEDIA_ACIMA;

		} catch (RuntimeException e) {
			request.setAttribute("erro", e.getMessage());
			forward = ERRO;
		}

		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}

}
