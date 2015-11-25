package dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import dao.EmpresaDao;
import dominio.Empresa;

public class EmpresaDaoImpl implements EmpresaDao {
	
	private EntityManager em;
	
	public EmpresaDaoImpl(){
		this.em = EM.getLocalEm();
	}

	@Override
	public void inserirAtualizar(Empresa x) {
		if(x.getCodEmpresa() != null){
			x = em.merge(x);
		}
		em.persist(x);
		
	}

	@Override
	public void excluir(Empresa x) {
		x = em.merge(x);
		em.remove(x);

	}

	@Override
	public Empresa buscar(int cod) {
		return em.find(Empresa.class, cod);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Empresa> buscarTodos() {
		String jpql = "SELECT x FROM Empresa x";
		Query query = em.createQuery(jpql);
		return query.getResultList();
	}

}
