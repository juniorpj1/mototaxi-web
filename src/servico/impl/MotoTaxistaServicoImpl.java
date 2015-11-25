package servico.impl;

import java.util.List;

import dao.MotoTaxistaDao;
import dao.DaoFactory;
import dao.jpa.EM;
import dominio.MotoTaxista;
import servico.MotoTaxistaServico;

public class MotoTaxistaServicoImpl implements MotoTaxistaServico {

	private MotoTaxistaDao dao;
	
	public MotoTaxistaServicoImpl(){
		dao = DaoFactory.criarMotoTaxistaDao();
	}
	
	@Override
	public void inserirAtualizar(MotoTaxista x) {
		EM.getLocalEm().getTransaction().begin();
		dao.inserirAtualizar(x);
		EM.getLocalEm().getTransaction().commit();

	}

	@Override
	public void excluir(MotoTaxista x) {
		EM.getLocalEm().getTransaction().begin();
		dao.excluir(x);
		EM.getLocalEm().getTransaction().commit();
	}

	@Override
	public MotoTaxista buscar(int cod) {
		return dao.buscar(cod);
	}

	@Override
	public List<MotoTaxista> buscarTodos() {
		return dao.buscarTodos();
	}

	@Override
	public List<MotoTaxista> buscarPorNome(String nome){
		return dao.buscarPorNome(nome);
	}
	

}
