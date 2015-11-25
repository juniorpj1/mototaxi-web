package servico.impl;

import java.util.List;

import dao.EmpresaDao;
import dao.DaoFactory;
import dao.jpa.EM;
import dominio.Empresa;
import servico.EmpresaServico;

public class EmpresaServicoImpl implements EmpresaServico {

	private EmpresaDao dao;
	
	public EmpresaServicoImpl(){
		dao = DaoFactory.criarEmpresaDao();
	}
	
	@Override
	public void inserirAtualizar(Empresa x) {
		EM.getLocalEm().getTransaction().begin();
		dao.inserirAtualizar(x);
		EM.getLocalEm().getTransaction().commit();
	}

	@Override
	public void excluir(Empresa x) {
		EM.getLocalEm().getTransaction().begin();
		dao.excluir(x);
		EM.getLocalEm().getTransaction().commit();
	}

	@Override
	public Empresa buscar(int cod) {
		return dao.buscar(cod);
	}

	@Override
	public List<Empresa> buscarTodos() {
		return dao.buscarTodos();
	}

}
