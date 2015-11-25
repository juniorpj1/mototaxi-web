package servico;

import java.util.List;

import dominio.Empresa;

public interface EmpresaServico {
	public void inserirAtualizar(Empresa x);
	public void excluir(Empresa x);
	public Empresa buscar(int cod);
	public List<Empresa> buscarTodos();
}
