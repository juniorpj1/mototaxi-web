package dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import dao.EmpresaDao;
import dominio.Empresa;
import dominio.MotoTaxista;

public class EmpresaDaoImpl implements EmpresaDao {
	
	private EntityManager em;
	
	public EmpresaDaoImpl(){
		this.em = EM.getLocalEm();
	}

	@Override
	public void inserir(Empresa x) {
		if(x.getCodEmpresa() != null){
			x = em.merge(x);
		}
		em.persist(x);
		
	}
	
	@Override
	public void alterar(Empresa x) {
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

	public boolean jaExisteCnpj(String cnpj){

		String hql = "SELECT c FROM Empresa c WHERE c.cnpj = :cnpj";
		Query query = em.createQuery(hql);
		query.setParameter("cnpj", cnpj);
		return query.getResultList().size() > 0;
	}
	
	public boolean jaExisteRazaoSocial(String razaoSocial){

		String hql = "SELECT c FROM Empresa c WHERE c.razaoSocial = :razaoSocial";
		Query query = em.createQuery(hql);
		query.setParameter("razaoSocial", razaoSocial);
		return query.getResultList().size() > 0;
	}
	
	@Override
	public boolean jaExisteOutroCnpj(String cnpj, Empresa x) {
		String hql = "SELECT cnpj from Empresa WHERE cnpj= :cnpj and codEmpresa != :codigo";
		Query query = em.createQuery(hql);
		query.setParameter("codigo", x.getCodEmpresa());
		query.setParameter("cnpj", cnpj);
		return query.getResultList().size() > 0;
	}
	
	@Override
	public boolean jaExisteOutraRazaoSocial(String razaoSocial, Empresa x) {
		String hql = "SELECT razaoSocial from Empresa WHERE razaoSocial = :razaoSocial and codEmpresa != :codigo";
		Query query = em.createQuery(hql);
		query.setParameter("razaoSocial", razaoSocial);
		query.setParameter("codigo", x.getCodEmpresa());
		return query.getResultList().size() > 0;
	}
	
}
