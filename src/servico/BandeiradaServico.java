package servico;

import java.util.List;

import dominio.Bandeirada;

public interface BandeiradaServico {
	public void inserirAtualizar(Bandeirada x);
	public void excluir(Bandeirada x);
	public Bandeirada buscar(int cod);
	public List<Bandeirada> buscarTodos();
}
