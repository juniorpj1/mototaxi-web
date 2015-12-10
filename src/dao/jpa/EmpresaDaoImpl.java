package dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import dao.EmpresaDao;
import dominio.Empresa;

public class EmpresaDaoImpl implements EmpresaDao {

	private EntityManager em;

	public EmpresaDaoImpl() {
		this.em = EM.getLocalEm();
	}

	@Override
	public void inserir(Empresa x) {
		if (x.getCodEmpresa() != null) {
			x = em.merge(x);
		}
		em.persist(x);
	}

	@Override
	public void alterar(Empresa x) {
		if (x.getCodEmpresa() != null) {
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

	@Override
	public boolean jaExisteCnpj(String cnpj) {

		String hql = "SELECT c FROM Empresa c WHERE c.cnpj = :cnpj";
		Query query = em.createQuery(hql);
		query.setParameter("cnpj", cnpj);
		return query.getResultList().size() > 0;
	}

	@Override
	public boolean jaExisteRazaoSocial(String razaoSocial) {

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

	@Override
	public boolean jaExisteNomeFantasia(String nomeFantasia) {

		String hql = "SELECT c FROM Empresa c WHERE c.nomeFantasia = :nomeFantasia";
		Query query = em.createQuery(hql);
		query.setParameter("nomeFantasia", nomeFantasia);
		return query.getResultList().size() > 0;
	}

	@Override
	public boolean jaExisteTelefone(String telefone) {

		String hql = "SELECT c FROM Empresa c WHERE c.telefone = :telefone";
		Query query = em.createQuery(hql);
		query.setParameter("telefone", telefone);
		return query.getResultList().size() > 0;
	}

	@Override
	public boolean jaExisteOutroNomeFantasia(String nomeFantasia, Empresa x) {
		String hql = "SELECT nomeFantasia from Empresa WHERE nomeFantasia= :nomeFantasia and codEmpresa != :codigo";
		Query query = em.createQuery(hql);
		query.setParameter("codigo", x.getCodEmpresa());
		query.setParameter("nomeFantasia", nomeFantasia);
		return query.getResultList().size() > 0;
	}

	@Override
	public boolean jaExisteOutroTelefone(String telefone, Empresa x) {
		String hql = "SELECT telefone from Empresa WHERE telefone = :telefone and codEmpresa != :codigo";
		Query query = em.createQuery(hql);
		query.setParameter("telefone", telefone);
		query.setParameter("codigo", x.getCodEmpresa());
		return query.getResultList().size() > 0;
	}
	
	@Override
	public boolean jaExisteEmail(String email) {

		String hql = "SELECT c FROM Empresa c WHERE c.email = :email";
		Query query = em.createQuery(hql);
		query.setParameter("email", email);
		return query.getResultList().size() > 0;
	}

	@Override
	public boolean jaExisteOutroEmail(String email, Empresa x) {
		String hql = "SELECT email from Empresa WHERE email= :email and codEmpresa != :codigo";
		Query query = em.createQuery(hql);
		query.setParameter("codigo", x.getCodEmpresa());
		query.setParameter("email", email);
		return query.getResultList().size() > 0;
	}

	
}