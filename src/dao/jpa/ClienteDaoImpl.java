package dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import dao.ClienteDao;
import dominio.Cliente;
import dominio.MotoTaxista;

public class ClienteDaoImpl implements ClienteDao {

	private EntityManager em;
	
	public ClienteDaoImpl(){
		this.em = EM.getLocalEm();
	}
	
	@Override
	public void inserirAtualizar(Cliente x) {
		if(x.getCodCliente() != null){
			x = em.merge(x);
		}
		em.persist(x);

	}

	@Override
	public void excluir(Cliente x) {
		x = em.merge(x);
		em.remove(x);

	}

	@Override
	public Cliente buscar(int cod) {
		return em.find(Cliente.class, cod);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Cliente> buscarTodos() {
		String jpql = "SELECT x FROM Cliente x";
		Query query = em.createQuery(jpql);
		return query.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Cliente> buscarPorNome(String nome){
	
	String s = "SELECT a FROM Cliente a WHERE 1=1";
	
	if (nome != null)
	s = s + " AND a.nome LIKE :n1";
	
	Query query = em.createQuery(s);
	
	if(nome != null)
	query.setParameter("n1", "%"+nome+"%");
	
	return query.getResultList();
	}

}
