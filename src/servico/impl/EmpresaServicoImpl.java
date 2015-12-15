package servico.impl;

import java.util.List;

import dao.DaoFactory;
import dao.EmpresaDao;
import dao.jpa.EM;
import dominio.Empresa;
import servico.EmpresaServico;
import servico.ServicoException;

public class EmpresaServicoImpl implements EmpresaServico {

	private EmpresaDao dao;
	
	public EmpresaServicoImpl(){
		dao = DaoFactory.criarEmpresaDao();
	}
	
	@Override
	public void inserir(Empresa x) throws ServicoException {
		
		if(dao.jaExisteCnpj(x.getCnpj())){
			throw new ServicoException("Este CNPJ já existe!", 1);
		}
		
		if(dao.jaExisteRazaoSocial(x.getRazaoSocial())){
			throw new ServicoException("Esta razão social já existe!", 1);
		}
		
		if(dao.jaExisteNomeFantasia(x.getNomeFantasia())){
			throw new ServicoException("Este nome fantasia já existe!", 1);
		}
		
		if(dao.jaExisteTelefone(x.getTelefone())){
			throw new ServicoException("Este telefone já existe!", 1);
		}
		
		if(dao.jaExisteEmail(x.getEmail())){
			throw new ServicoException("Este e-mail já existe!", 1);
		}
		
		EM.getLocalEm().getTransaction().begin();
		dao.inserir(x);
		EM.getLocalEm().getTransaction().commit();
	}

	@Override
	public void atualizar(Empresa x) throws ServicoException {
		
		if(dao.jaExisteOutroCnpj(x.getCnpj(), x)){
			throw new ServicoException("Este nome já existe!", 1);
		}
		if(dao.jaExisteOutraRazaoSocial(x.getRazaoSocial(), x)){
			throw new ServicoException("Esta placa já existe!", 1);
		}
		
		EM.getLocalEm().getTransaction().begin();
		dao.alterar(x);
		EM.getLocalEm().getTransaction().commit();

	}
	
	
	@Override
	public void excluir(Empresa x) throws ServicoException {
		
		if(x.getMotoTaxistas().size() > 0){
		throw new ServicoException("A Empresa possui Mototaxistas associados à ela", 1);
	}
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
