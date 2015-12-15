package servico.impl;

import java.util.List;

import dao.MotoTaxistaDao;
import dao.DaoFactory;
import dao.jpa.EM;
import dominio.MotoTaxista;
import servico.MotoTaxistaServico;
import servico.ServicoException;

public class MotoTaxistaServicoImpl implements MotoTaxistaServico {

	private MotoTaxistaDao dao;
	
	public MotoTaxistaServicoImpl(){
		dao = DaoFactory.criarMotoTaxistaDao();
	}
	
	@Override
	public void inserir(MotoTaxista x) throws ServicoException {
		
		if(dao.jaExisteNome(x.getNome())){
			throw new ServicoException("Este nome já existe!", 1);
		}
		if(dao.jaExistePlaca(x.getPlaca())){
			throw new ServicoException("Esta placa já existe!", 1);
		}
		
		EM.getLocalEm().getTransaction().begin();
		dao.inserir(x);
		EM.getLocalEm().getTransaction().commit();

	}
	
	@Override
	public void atualizar(MotoTaxista x) throws ServicoException {
		
		if(dao.jaExisteOutroNome(x.getNome(), x)){
			throw new ServicoException("Este nome já existe!", 1);
		}
		if(dao.jaExisteOutraPlaca(x.getPlaca(), x)){
			throw new ServicoException("Esta placa já existe!", 1);
		}
		
		EM.getLocalEm().getTransaction().begin();
		dao.alterar(x);
		EM.getLocalEm().getTransaction().commit();

	}
	

	@Override
	public void excluir(MotoTaxista x) throws ServicoException {
		
		if(x.getAvaliacoes().size() > 0){
		throw new ServicoException("O Mototaxista possui uma avaliação associada à ele", 1);
	}
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
