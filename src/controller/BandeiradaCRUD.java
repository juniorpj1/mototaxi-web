package controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.Bandeirada;
import servico.BandeiradaServico;
import servico.ServicoFactory;

@WebServlet("/administrador/BandeiradaCRUD")
public class BandeiradaCRUD extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static String INSERIR_OU_ALTERAR = "/administrador/bandeiradaForm.jsp";
	private static String LISTAR = "/administrador/bandeiradaListar.jsp";
	private static String ERRO = "/cliente/erro.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BandeiradaServico bandeiradaServico = ServicoFactory.criarBandeiradaServico();
		String forward = "";
		String cmd = request.getParameter("cmd");
		if (cmd == null || cmd.equalsIgnoreCase(""))
			cmd = "listar";
		if (cmd.equalsIgnoreCase("deletar")) {
			int cod = Integer.parseInt(request.getParameter("cod"));
			try {
				Bandeirada ban = bandeiradaServico.buscar(cod);
				if (ban != null) {
					bandeiradaServico.excluir(ban);
				}
				request.setAttribute("lista", bandeiradaServico.buscarTodos());
				forward = LISTAR;
			} catch (RuntimeException e) {
				request.setAttribute("erro", "Erro de execução: " + e.getMessage());
				forward = ERRO;
			}
		} else if (cmd.equalsIgnoreCase("editar")) {
			int cod = Integer.parseInt(request.getParameter("cod"));
			try {
				Bandeirada ban = bandeiradaServico.buscar(cod);
				if (ban != null) {
					request.setAttribute("ban", ban);
					forward = INSERIR_OU_ALTERAR;
				} else {
					request.setAttribute("lista", bandeiradaServico.buscarTodos());
					forward = LISTAR;
				}
			} catch (RuntimeException e) {
				request.setAttribute("Erro de execução: ", e.getMessage());
				forward = ERRO;
			}
		} else if (cmd.equalsIgnoreCase("listar")) {
			try {
				request.setAttribute("lista", bandeiradaServico.buscarTodos());
				forward = LISTAR;
			} catch (RuntimeException e) {
				request.setAttribute("erro", "Erro de execução: " + e.getMessage());
				forward = ERRO;
			}
		} else if (cmd.equalsIgnoreCase("novo")) {
			try {
				Bandeirada ban = new Bandeirada();
				request.setAttribute("ban", ban);
				forward = INSERIR_OU_ALTERAR;
			} catch (RuntimeException e) {
				request.setAttribute("erro", "Erro de execução: " + e.getMessage());
				forward = ERRO;
			}
		}
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			BandeiradaServico bandeiradaServico = ServicoFactory.criarBandeiradaServico();
			String forward = "";
			
			Bandeirada alb = instanciar(request);
			bandeiradaServico.inserirAtualizar(alb);
			request.setAttribute("lista", bandeiradaServico.buscarTodos());
			forward = LISTAR;
			
			RequestDispatcher rd = request.getRequestDispatcher(forward);
			rd.forward(request, response);
			}

	private Bandeirada instanciar(HttpServletRequest req) {
		String aux, aux1, aux2;
		BigDecimal b1 = new BigDecimal("0.00");
		BigDecimal b2 = new BigDecimal("0.00");
		Bandeirada x = new Bandeirada();
		
		aux = req.getParameter("codBandeirada");
		
		if (aux != null && !aux.isEmpty())
			x.setCodBandeirada(Integer.parseInt(aux));
		
		aux1 = req.getParameter("valorInicial");
		b1 = new BigDecimal(aux1);
		x.setValorInicial(b1);
		
		aux2 = req.getParameter("valorKM");
		b2 = new BigDecimal(aux2);
		x.setValorKM(b2);
		
		return x;
	}
}
