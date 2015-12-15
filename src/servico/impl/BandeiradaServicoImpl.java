
package servico.impl;

import java.util.List;

import dao.BandeiradaDao;
import dao.DaoFactory;
import dao.jpa.EM;
import dominio.Bandeirada;
import servico.BandeiradaServico;

public class BandeiradaServicoImpl implements BandeiradaServico {

	private BandeiradaDao dao;
	
	public BandeiradaServicoImpl(){
		dao = DaoFactory.criarBandeiradaDao();
	}
	
	@Override
	public void inserirAtualizar(Bandeirada x) {
		EM.getLocalEm().getTransaction().begin();
		dao.inserirAtualizar(x);
		EM.getLocalEm().getTransaction().commit();
	}

	@Override
	public void excluir(Bandeirada x) {
		EM.getLocalEm().getTransaction().begin();
		dao.excluir(x);
		EM.getLocalEm().getTransaction().commit();
	}

	@Override
	public Bandeirada buscar(int cod) {
		return dao.buscar(cod);
	}

	@Override
	public List<Bandeirada> buscarTodos() {
		return dao.buscarTodos();
	}

}
