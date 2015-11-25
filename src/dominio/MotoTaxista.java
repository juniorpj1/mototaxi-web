package dominio;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.*;

@Entity
@Table(name = "tb_mototaxista")

public class MotoTaxista implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer codMotoTaxista;
	private String nome;
	private String placa;
	private Boolean disponivel;
	//private Double media;

	/*public Double getMedia() {
		return media;
	}

	public void setMedia(Double media) {
		this.media = media;
	}*/

	@ManyToOne
	@JoinColumn(name = "empresa")
	private Empresa empresa;
	@OneToMany(mappedBy = "motoTaxista")
	private List<Avaliacao> avaliacoes;
	@OneToMany(mappedBy = "motoTaxista")
	private List<Chamado> chamados;

	public MotoTaxista() {
		this.avaliacoes = new ArrayList<>();
		this.chamados = new ArrayList<>();
	}

	public MotoTaxista(Integer codMotoTaxista, String nome, String placa, Boolean disponivel, Empresa empresa) {
		super();
		this.codMotoTaxista = codMotoTaxista;
		this.nome = nome;
		this.placa = placa;
		this.disponivel = disponivel;
		this.empresa = empresa;
		//this.media = media;
		this.avaliacoes = new ArrayList<Avaliacao>();
		this.chamados = new ArrayList<Chamado>();
	}

	public Integer getCodMotoTaxista() {
		return codMotoTaxista;
	}

	public void setCodMotoTaxista(Integer codMotoTaxista) {
		this.codMotoTaxista = codMotoTaxista;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public Boolean getDisponivel() {
		return disponivel;
	}

	public void setDisponivel(Boolean disponivel) {
		this.disponivel = disponivel;
	}

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}

	public List<Avaliacao> getAvaliacoes() {
		return avaliacoes;
	}

	public void setAvaliacoes(List<Avaliacao> avaliacoes) {
		this.avaliacoes = avaliacoes;
	}

	public List<Chamado> getChamados() {
		return chamados;
	}

	public void setChamados(List<Chamado> chamados) {
		this.chamados = chamados;
	}

	public void addAvaliacao(Avaliacao x) {
		this.avaliacoes.add(x);
	}

	public void removeAvaliacao(Avaliacao x) {
		this.avaliacoes.remove(x);
	}

	public void addChamado(Chamado c) {
		this.chamados.add(c);
	}

	public void removeChamado(Chamado c) {
		this.chamados.remove(c);
	}

	@Override
	public String toString() {
		return "MotoTaxista [codMotoTaxista=" + codMotoTaxista + ", nome=" + nome + ", placa=" + placa + ", disponivel="
				+ disponivel + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((codMotoTaxista == null) ? 0 : codMotoTaxista.hashCode());
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
		MotoTaxista other = (MotoTaxista) obj;
		if (codMotoTaxista == null) {
			if (other.codMotoTaxista != null)
				return false;
		} else if (!codMotoTaxista.equals(other.codMotoTaxista))
			return false;
		return true;
	}

	public Double media() {
		double soma = 0.0;
		double media = 0.0;

		for (int i = 0; i < this.avaliacoes.size(); i++) {
			soma = soma + this.avaliacoes.get(i).getNota();
		}

		media = soma / this.avaliacoes.size();

		return media;
	}

}
