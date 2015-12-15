package servico;

import java.util.List;

import dominio.Cliente;


public interface ClienteServico {
	public void inserirAtualizar(Cliente x);
	public void excluir(Cliente x);
	public Cliente buscar(int cod);
	public List<Cliente> buscarTodos();
	public List<Cliente> buscarPorNome(String nome);
}
