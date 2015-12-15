package servico;

import java.util.List;

import dominio.Avaliacao;

public interface AvaliacaoServico {
	public void inserirAtualizar(Avaliacao x);
	public void excluir(Avaliacao x);
	public Avaliacao buscar(int cod);
	public List<Avaliacao> buscarTodos();
}
