package dao;

import java.util.List;

import dominio.MotoTaxista;

public interface MotoTaxistaDao {
	public void inserir(MotoTaxista x);
	public void alterar(MotoTaxista x);
	public void excluir(MotoTaxista x);
	public MotoTaxista buscar(int cod);
	public List<MotoTaxista> buscarTodos();
	
	public List<MotoTaxista> buscarPorNome(String nome);
	
	public boolean jaExistePlaca(String placa);
	
	public boolean jaExisteNome(String nome);
	
	public boolean jaExisteOutraPlaca(String placa, MotoTaxista x);
	
	public boolean jaExisteOutroNome(String nome, MotoTaxista x);
	
	
	
}
