package servico.impl;

import java.util.List;

import dao.AvaliacaoDao;
import dao.DaoFactory;
import dao.jpa.EM;
import dominio.Avaliacao;
import servico.AvaliacaoServico;

public class AvaliacaoServicoImpl implements AvaliacaoServico {

	private AvaliacaoDao dao;
	
	public AvaliacaoServicoImpl(){
		dao = DaoFactory.criarAvaliacaoDao();
	}
	
	@Override
	public void inserirAtualizar(Avaliacao x) {
		EM.getLocalEm().getTransaction().begin();
		dao.inserirAtualizar(x);
		EM.getLocalEm().getTransaction().commit();
	}

	@Override
	public void excluir(Avaliacao x) {
		EM.getLocalEm().getTransaction().begin();
		dao.excluir(x);
		EM.getLocalEm().getTransaction().commit();
	}

	@Override
	public Avaliacao buscar(int cod) {
		return dao.buscar(cod);
	}

	@Override
	public List<Avaliacao> buscarTodos() {
		return dao.buscarTodos();
	}

}
