package servico;

import java.util.List;

import dominio.MotoTaxista;

public interface MotoTaxistaServico {
	public void inserir(MotoTaxista x) throws ServicoException;
	public void atualizar(MotoTaxista x) throws ServicoException;
	public void excluir(MotoTaxista x)  throws ServicoException;
	public MotoTaxista buscar(int cod);
	public List<MotoTaxista> buscarTodos();
	
	public List<MotoTaxista> buscarPorNome(String nome);
}
