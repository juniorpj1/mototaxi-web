package servico;

import java.util.List;

import dominio.MotoTaxista;

public interface MotoTaxistaServico {
	public void inserirAtualizar(MotoTaxista x);
	public void excluir(MotoTaxista x);
	public MotoTaxista buscar(int cod);
	public List<MotoTaxista> buscarTodos();
	
	public List<MotoTaxista> buscarPorNome(String nome);
}
