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
	public boolean jaExisteOutroCnpj(String cnpj, Empresa x);
	
	public boolean jaExisteRazaoSocial(String razaoSocial);	
	public boolean jaExisteOutraRazaoSocial(String razaoSocial, Empresa x);
	
	public boolean jaExisteNomeFantasia(String nomeFantasia);
	public boolean jaExisteOutroNomeFantasia(String nomeFantasia, Empresa x);
	
	public boolean jaExisteTelefone(String telefone);
	public boolean jaExisteOutroTelefone(String telefone, Empresa x);
	
	public boolean jaExisteEmail(String email);
	public boolean jaExisteOutroEmail(String email, Empresa x);
	
}

