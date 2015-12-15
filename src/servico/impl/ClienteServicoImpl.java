package servico.impl;

import java.util.List;

import dao.ClienteDao;
import dao.DaoFactory;
import dao.jpa.EM;
import dominio.Cliente;
import servico.ClienteServico;

public class ClienteServicoImpl implements ClienteServico {

	private ClienteDao dao;
	
	public ClienteServicoImpl(){
		dao = DaoFactory.criarClienteDao();
	}
	
	@Override
	public void inserirAtualizar(Cliente x) {
		EM.getLocalEm().getTransaction().begin();
		dao.inserirAtualizar(x);
		EM.getLocalEm().getTransaction().commit();
	}

	@Override
	public void excluir(Cliente x) {
		EM.getLocalEm().getTransaction().begin();
		dao.excluir(x);
		EM.getLocalEm().getTransaction().commit();
	}

	@Override
	public Cliente buscar(int cod) {
		return dao.buscar(cod);
	}

	@Override
	public List<Cliente> buscarTodos() {
		return dao.buscarTodos();
	}

	@Override
	public List<Cliente> buscarPorNome(String nome) {
		return dao.buscarPorNome(nome);
	}

}
