package dao;

import java.util.List;

import dominio.MotoTaxista;

public interface MotoTaxistaDao {
	public void inserirAtualizar(MotoTaxista x);
	public void excluir(MotoTaxista x);
	public MotoTaxista buscar(int cod);
	public List<MotoTaxista> buscarTodos();
	
	public List<MotoTaxista> buscarPorNome(String nome);
}
