package dominio;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name="tb_avaliacao")

public class Avaliacao implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer codAvaliacao;
	private Double nota;
	private String descricao;

	@ManyToOne
	@JoinColumn(name="cliente")
	private Cliente cliente;
	@ManyToOne
	@JoinColumn(name="motoTaxista")
	private MotoTaxista motoTaxista;

	public Avaliacao() {
		
	}

	public Avaliacao(Integer codAvaliacao, Double nota, String descricao, Cliente cliente, MotoTaxista motoTaxista) {
		super();
		this.codAvaliacao = codAvaliacao;
		this.nota = nota;
		this.descricao = descricao;
		this.cliente = cliente;
		this.motoTaxista = motoTaxista;
	}

	public Integer getCodAvaliacao() {
		return codAvaliacao;
	}

	public void setCodAvaliacao(Integer codAvaliacao) {
		this.codAvaliacao = codAvaliacao;
	}

	public Double getNota() {
		return nota;
	}

	public void setNota(Double nota) {
		this.nota = nota;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	
	public MotoTaxista getMotoTaxista() {
		return motoTaxista;
	}

	public void setMotoTaxista(MotoTaxista motoTaxista) {
		this.motoTaxista = motoTaxista;
	}

	@Override
	public String toString() {
		return "Avaliacao [codAvaliacao=" + codAvaliacao + ", nota=" + nota
				+ ", descricao=" + descricao + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((codAvaliacao == null) ? 0 : codAvaliacao.hashCode());
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
		Avaliacao other = (Avaliacao) obj;
		if (codAvaliacao == null) {
			if (other.codAvaliacao != null)
				return false;
		} else if (!codAvaliacao.equals(other.codAvaliacao))
			return false;
		return true;
	}

}
