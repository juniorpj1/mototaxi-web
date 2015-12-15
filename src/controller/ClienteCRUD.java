package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.Cliente;
import servico.ClienteServico;
import servico.ServicoException;
import servico.ServicoFactory;

@WebServlet("/cliente/ClienteCRUD")
public class ClienteCRUD extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static String INSERIR_OU_ALTERAR = "/anonimo/clienteForm.jsp";
	private static String LISTARCLI = "/anonimo/listarCliente.jsp";
	private static String VISUALIZAR = "/administrador/visualizarAvaliacao.jsp";
	private static String ERRO = "/publico/erro.jsp";

	public ClienteCRUD() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ClienteServico clienteServico = ServicoFactory.criarClienteServico();
		

		String forward = "";
		String cmd = request.getParameter("cmd");

		if (cmd == null || cmd.equalsIgnoreCase(""))
			cmd = "listarcli";

		if (cmd.equalsIgnoreCase("novo")) {
			try {
				Cliente cliente = new Cliente();
				request.setAttribute("cliente", cliente);
				forward = INSERIR_OU_ALTERAR;
			} catch (RuntimeException e) {
				request.setAttribute("erro", "Erro de execução: " + e.getMessage());
				forward = ERRO;
			}
		}
		
		else if (cmd.equalsIgnoreCase("visualizar")) {
			int cod = Integer.parseInt(request.getParameter("cod"));
			try {
				Cliente cli = clienteServico.buscar(cod);
				if (cli != null) {
					request.setAttribute("cli", cli);
					forward = VISUALIZAR;
				} 
			} catch (RuntimeException e) {
				request.setAttribute("Erro de execução: ", e.getMessage());
				forward = ERRO;
			}
		}
		
		else if (cmd.equalsIgnoreCase("listarcli")) {
			try {
				request.setAttribute("listacli", clienteServico.buscarTodos());
				forward = LISTARCLI;
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
		
		
		ClienteServico clienteServico = ServicoFactory.criarClienteServico();
		String forward = "";
		
		try {
			Cliente cliente = instanciar(request);
			clienteServico.inserirAtualizar(cliente);
			
			request.setAttribute("listacli", clienteServico.buscarTodos());
			forward = LISTARCLI;
		} 
		catch (RuntimeException | ServicoException e) {
			request.setAttribute("erro", e.getMessage());
			forward = ERRO;
		}
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}
		
	
	private Cliente instanciar(HttpServletRequest req) throws ServletException, IOException, ServicoException{
		
		String aux;
		Cliente c = new Cliente();
		
		aux = req.getParameter("codCliente");
			
		if (aux != null && !aux.isEmpty())
				c.setCodCliente(Integer.parseInt(aux));
				
				aux = req.getParameter("cpf");
				c.setCpf(aux);
				
				aux = req.getParameter("nome");
				c.setNome(aux);
				
				aux = req.getParameter("senha");
				c.setSenha(aux);
					
				aux = req.getParameter("telefone");
				c.setTelefone(aux);
						
				return c;	
			}
	
	}
