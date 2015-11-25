package dao;

import java.util.List;

import dominio.Avaliacao;

public interface AvaliacaoDao {
	public void inserirAtualizar(Avaliacao x);
	public void excluir(Avaliacao x);
	public Avaliacao buscar(int cod);
	public List<Avaliacao> buscarTodos();
}