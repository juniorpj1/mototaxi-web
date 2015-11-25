package dominio;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;
@Entity
@Table(name="tb_cliente")

public class Cliente implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer codCliente;
	private String nome;
	private String telefone;
	private String cpf;
	private String senha;

	@OneToMany(mappedBy="cliente")
	private List<Chamado> chamados;
	@OneToMany(mappedBy="cliente")
	private List<Avaliacao> avaliacoes;

	public Cliente() {
		this.chamados = new ArrayList<Chamado>();
		this.avaliacoes = new ArrayList<Avaliacao>();
	}

	public Cliente(Integer codCliente, String nome, String telefone,
			String cpf, String senha) {
		super();
		this.codCliente = codCliente;
		this.nome = nome;
		this.telefone = telefone;
		this.cpf = cpf;
		this.senha = senha;
		this.chamados = new ArrayList<Chamado>();
		this.avaliacoes = new ArrayList<Avaliacao>();
	}

	public Integer getCodCliente() {
		return codCliente;
	}

	public void setCodCliente(Integer codCliente) {
		this.codCliente = codCliente;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public List<Chamado> getChamado() {
		return chamados;
	}

	public void setChamado(List<Chamado> chamado) {
		this.chamados = chamado;
	}

	public void addChamado(Chamado c) {
		this.chamados.add(c);
	}

	public void removeChamado(Chamado c) {
		this.chamados.remove(c);
	}
	
	public void addAvaliacao(Avaliacao x){
		this.avaliacoes.add(x);
	}
	
	public void removeAvaliacao(Avaliacao x){
		this.avaliacoes.remove(x);
	}

	@Override
	public String toString() {
		return "Cliente [codCliente=" + codCliente + ", nome=" + nome
				+ ", telefone=" + telefone + ", cpf=" + cpf + ", senha="
				+ senha + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((codCliente == null) ? 0 : codCliente.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cliente other = (Cliente) obj;
		if (codCliente == null) {
			if (other.codCliente != null)
				return false;
		} else if (!codCliente.equals(other.codCliente))
			return false;
		return true;
	}

	public List<Avaliacao> getAvaliacoes() {
		return avaliacoes;
	}

	public void setAvaliacoes(List<Avaliacao> avaliacoes) {
		this.avaliacoes = avaliacoes;
	}

}
