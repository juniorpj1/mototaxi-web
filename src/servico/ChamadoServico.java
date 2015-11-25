package servico;

import java.util.List;

import dominio.Chamado;

public interface ChamadoServico {
	public void inserirChamado(Chamado x) throws ServicoException;
	public void excluir(Chamado x);
	public Chamado buscar(int cod);
	public List<Chamado> buscarTodos();
}
