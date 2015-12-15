package dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import dao.AvaliacaoDao;
import dominio.Avaliacao;

public class AvaliacaoDaoImpl implements AvaliacaoDao {

	private EntityManager em;

	public AvaliacaoDaoImpl() {
		this.em = EM.getLocalEm();
	}

	@Override
	public void inserirAtualizar(Avaliacao x) {
		if (x.getCodAvaliacao() != null) {
			x = em.merge(x);
		}
		em.persist(x);
	}

	@Override
	public void excluir(Avaliacao x) {
		x = em.merge(x);
		em.remove(x);
	}

	@Override
	public Avaliacao buscar(int cod) {
		return em.find(Avaliacao.class, cod);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Avaliacao> buscarTodos() {
		String jpql = "SELECT x FROM Avaliacao x";
		Query query = em.createQuery(jpql);
		return query.getResultList();
	}

}
