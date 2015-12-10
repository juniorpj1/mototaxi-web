package dao;

import java.util.List;

import dominio.Empresa;

public interface EmpresaDao {
	public void inserir(Empresa x);
	public void alterar(Empresa x);
	public void excluir(Empresa x);
	public Empresa buscar(int cod);
	public List<Empresa> buscarTodos();
	
	public boolean jaExisteCnpj(String cnpj);
	
	public boolean jaExisteRazaoSocial(String razaoSocial);
	
	boolean jaExisteOutroCnpj(String cnpj, Empresa x);
	
	public boolean jaExisteOutraRazaoSocial(String razaoSocial, Empresa x);
}

