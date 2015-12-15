package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.Avaliacao;
import dominio.Cliente;
import dominio.MotoTaxista;
import servico.AvaliacaoServico;
import servico.ClienteServico;
import servico.MotoTaxistaServico;
import servico.ServicoException;
import servico.ServicoFactory;

@WebServlet("/cliente/AvaliacaoCRUD")
public class AvaliacaoCRUD extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static String INSERIR_OU_ALTERAR = "/administrador/avaliacaoForm.jsp";
	private static String LISTAR = "/administrador/listarAvaliacao.jsp";
	private static String VISUALIZAR = "/administrador/visualizarAvaliacao.jsp";
	private static String ERRO = "/publico/erro.jsp";

	public AvaliacaoCRUD() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		AvaliacaoServico avaliacaoServico = ServicoFactory.criarAvaliacaoServico();
		

		String forward = "";
		String cmd = request.getParameter("cmd");

		if (cmd == null || cmd.equalsIgnoreCase(""))
			cmd = "listar";

		if (cmd.equalsIgnoreCase("novo")) {
			try {
				Avaliacao avaliacao = new Avaliacao();
				request.setAttribute("avaliacao", avaliacao);
				forward = INSERIR_OU_ALTERAR;
			} catch (RuntimeException e) {
				request.setAttribute("erro", "Erro de execução: " + e.getMessage());
				forward = ERRO;
			}
		}
		
		else if (cmd.equalsIgnoreCase("visualizar")) {
			int cod = Integer.parseInt(request.getParameter("cod"));
			try {
				Avaliacao empr = avaliacaoServico.buscar(cod);
				if (empr != null) {
					request.setAttribute("empr", empr);
					forward = VISUALIZAR;
				} 
			} catch (RuntimeException e) {
				request.setAttribute("Erro de execução: ", e.getMessage());
				forward = ERRO;
			}
		}
		
		else if (cmd.equalsIgnoreCase("listar")) {
			try {
				request.setAttribute("lista", avaliacaoServico.buscarTodos());
				forward = LISTAR;
			} catch (RuntimeException e) {
				request.setAttribute("erro", "Erro de execução: " + e.getMessage());
				forward = ERRO;
			}
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		AvaliacaoServico avaliacaoServico = ServicoFactory.criarAvaliacaoServico();
		String forward = "";
		
		try {
			Avaliacao avaliacao = instanciar(request);
			avaliacaoServico.inserirAtualizar(avaliacao);
			
			request.setAttribute("lista", avaliacaoServico.buscarTodos());
			forward = LISTAR;
		} 
		catch (RuntimeException | ServicoException e) {
			request.setAttribute("erro", e.getMessage());
			forward = ERRO;
		}
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}
		
	
	private Avaliacao instanciar(HttpServletRequest req) throws ServletException, IOException, ServicoException{
		
		MotoTaxistaServico motoServico = ServicoFactory.criarMotoTaxistaServico();
		ClienteServico cliServico = ServicoFactory.criarClienteServico();
		
		String aux;
		Avaliacao x = new Avaliacao();
		
		aux = req.getParameter("codAvaliacao");
			
		if (aux != null && !aux.isEmpty())
				x.setCodAvaliacao(Integer.parseInt(aux));
			
				aux = req.getParameter("descricao");
				x.setDescricao(aux);
				
				Double notaD = Double.parseDouble(req.getParameter("nota"));		
				x.setNota(notaD);
				
				String nomeMoto = req.getParameter("nomemot");
				List<MotoTaxista> mot = motoServico.buscarPorNome(nomeMoto);
				
				for(int i=0; i < mot.size(); i++){
					x.setMotoTaxista(mot.get(i));	
				}
				
				String nomeCliente = req.getParameter("nomecli");
				List<Cliente> cli = cliServico.buscarPorNome(nomeCliente);
				
				for(int i=0; i < mot.size(); i++){
					x.setCliente(cli.get(i));
				}
				
				return x;
			}
		
	}
