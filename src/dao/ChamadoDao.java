package dao;

import java.util.List;

import dominio.Chamado;

public interface ChamadoDao {
	public void inserirAtualizar(Chamado x);
	public void excluir(Chamado x);
	public Chamado buscar(int cod);
	public List<Chamado> buscarTodos();
}
