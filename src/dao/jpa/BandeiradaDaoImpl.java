package dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import dao.BandeiradaDao;
import dominio.Bandeirada;

public class BandeiradaDaoImpl implements BandeiradaDao {

	private EntityManager em;

	public BandeiradaDaoImpl() {
		this.em = EM.getLocalEm();
	}

	@Override
	public void inserirAtualizar(Bandeirada x) {
		if (x.getCodBandeirada() != null) {
			x = em.merge(x);
		}
		em.persist(x);
	}

	@Override
	public void excluir(Bandeirada x) {
		x = em.merge(x);
		em.remove(x);
	}

	@Override
	public Bandeirada buscar(int cod) {
		return em.find(Bandeirada.class, cod);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Bandeirada> buscarTodos(){
		String jpql = "SELECT x FROM Artista x";
		Query query = em.createQuery(jpql);
		return query.getResultList();
	}

}
