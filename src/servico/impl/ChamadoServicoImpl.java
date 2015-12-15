package servico.impl;

import java.util.List;

import dao.ChamadoDao;
import dao.DaoFactory;
import dao.MotoTaxistaDao;
import dao.jpa.EM;
import dominio.Chamado;
import dominio.MotoTaxista;
import servico.ChamadoServico;
import servico.ServicoException;

public class ChamadoServicoImpl implements ChamadoServico {

	private ChamadoDao dao;

	public ChamadoServicoImpl() {
		dao = DaoFactory.criarChamadoDao();
	}

	Double distanciaLimite = 100.0;
	@Override
	public void inserirChamado(Chamado x) throws ServicoException {
		MotoTaxistaDao motoTaxistaDao = DaoFactory.criarMotoTaxistaDao();

		MotoTaxista mot = motoTaxistaDao.buscar(x.getMotoTaxista().getCodMotoTaxista());

		for (Chamado cham : mot.getChamados()) {
			if (cham.getDistancia() > distanciaLimite) {
				throw new ServicoException("Distância do chamado ultrapassou o limite!", 1);
			}
		}

		EM.getLocalEm().getTransaction().begin();
		dao.inserirAtualizar(x);
		EM.getLocalEm().getTransaction().commit();
	}
		
	@Override
	public void excluir(Chamado x) {
		EM.getLocalEm().getTransaction().begin();
		dao.excluir(x);
		EM.getLocalEm().getTransaction().commit();
	}

	@Override
	public Chamado buscar(int cod) {
		return dao.buscar(cod);
	}

	@Override
	public List<Chamado> buscarTodos() {
		return dao.buscarTodos();
	}
	
}
