package dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import dao.ChamadoDao;
import dominio.Chamado;

public class ChamadoDaoImpl implements ChamadoDao {

	private EntityManager em;
	
	public ChamadoDaoImpl(){
		this.em = EM.getLocalEm();
	}
	
	@Override
	public void inserirAtualizar(Chamado x) {
		if(x.getCodChamado() != null){
			x = em.merge(x);
		}
		em.persist(x);
	}

	@Override
	public void excluir(Chamado x) {
		x = em.merge(x);
		em.remove(x);
	}

	@Override
	public Chamado buscar(int cod) {
		return em.find(Chamado.class, cod);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Chamado> buscarTodos() {
		String jpql = "SELECT x FROM Chamado x";
		Query query = em.createQuery(jpql);
		return query.getResultList();
	}
	
}
