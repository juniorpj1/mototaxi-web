package dominio;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="tb_bandeirada")

public class Bandeirada implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer codBandeirada;
	private BigDecimal valorInicial;
	private BigDecimal valorKM;
	
	@OneToMany(mappedBy="bandeirada")
	private List<Chamado> chamados;

	public Bandeirada() {
		chamados = new ArrayList<>();
	}

	public Bandeirada(Integer codBandeirada, BigDecimal valorInicial, BigDecimal valorKM) {
		super();
		this.codBandeirada = codBandeirada;
		this.valorInicial = valorInicial;
		this.valorKM = valorKM;
		chamados = new ArrayList<>();
	}

	public Integer getCodBandeirada() {
		return codBandeirada;
	}

	public void setCodBandeirada(Integer codBandeirada) {
		this.codBandeirada = codBandeirada;
	}

	public BigDecimal getValorInicial() {
		return valorInicial;
	}

	public void setValorInicial(BigDecimal valorInicial) {
		this.valorInicial = valorInicial;
	}

	public BigDecimal getValorKM() {
		return valorKM;
	}

	public void setValorKM(BigDecimal valorKM) {
		this.valorKM = valorKM;
	}

	public List<Chamado> getChamados() {
		return chamados;
	}

	public void setChamados(List<Chamado> chamados) {
		this.chamados = chamados;
	}
	
	public void addChamado(Chamado x){
		this.chamados.add(x);
	}
	
	public void removeChamado(Chamado x){
		this.chamados.remove(x);
	}

	@Override
	public String toString() {
		return "Bandeirada [codBandeirada=" + codBandeirada + ", valorInicial=" + valorInicial + ", valorKM=" + valorKM
				+ "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((codBandeirada == null) ? 0 : codBandeirada.hashCode());
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
		Bandeirada other = (Bandeirada) obj;
		if (codBandeirada == null) {
			if (other.codBandeirada != null)
				return false;
		} else if (!codBandeirada.equals(other.codBandeirada))
			return false;
		return true;
	}
	
	
	
	
	
	
	
}







