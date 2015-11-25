package dao;

import java.util.List;

import dominio.Empresa;

public interface EmpresaDao {
	public void inserirAtualizar(Empresa x);
	public void excluir(Empresa x);
	public Empresa buscar(int cod);
	public List<Empresa> buscarTodos();
}
