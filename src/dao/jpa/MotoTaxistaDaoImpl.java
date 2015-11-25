package dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import dao.MotoTaxistaDao;
import dominio.MotoTaxista;

public class MotoTaxistaDaoImpl implements MotoTaxistaDao {
 
	private EntityManager em;
	
	public MotoTaxistaDaoImpl(){
		this.em = EM.getLocalEm();
	}
	
	@Override
	public void inserirAtualizar(MotoTaxista x) {
		if(x.getCodMotoTaxista() != null){
			x = em.merge(x);
		}
		em.persist(x);

	}

	@Override
	public void excluir(MotoTaxista x) {
		x = em.merge(x);
		em.remove(x);

	}

	@Override
	public MotoTaxista buscar(int cod) {
		return em.find(MotoTaxista.class, cod);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MotoTaxista> buscarTodos() {
		String jpql = "SELECT x FROM MotoTaxista x";
		Query query = em.createQuery(jpql);
		return query.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<MotoTaxista> buscarPorNome(String nome){
	
	String s = "SELECT a FROM MotoTaxista a WHERE 1=1";
	
	if (nome != null)
	s = s + " AND a.nome LIKE :n1";
	
	Query query = em.createQuery(s);
	
	if(nome != null)
	query.setParameter("n1", "%"+nome+"%");
	
	return query.getResultList();
	}

}
