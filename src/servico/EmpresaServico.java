package servico;

import java.util.List;

import dominio.Empresa;

public interface EmpresaServico {
	public void excluir(Empresa x) throws ServicoException;
	public Empresa buscar(int cod);
	public List<Empresa> buscarTodos();
	public void inserir(Empresa empr) throws ServicoException;
	public void atualizar(Empresa empr) throws ServicoException;
}
