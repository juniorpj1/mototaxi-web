package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet
public class TesteErro extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	private static String ERRO = "/publico/erro.jsp";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setAttribute("erro", "Mensagem para página com erro");
		RequestDispatcher rd = request.getRequestDispatcher(ERRO);
		rd.forward(request, response);
	}

}
