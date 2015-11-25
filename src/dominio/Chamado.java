package dominio;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "tb_chamado")

public class Chamado implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer codChamado;
	private String origem;
	private String destino;
	private Date dataHora;
	private Double distanciaKM;

	@ManyToOne
	@JoinColumn(name = "motoTaxi")
	private MotoTaxista motoTaxista;
	@ManyToOne
	@JoinColumn(name = "cliente")
	private Cliente cliente;
	@ManyToOne
	@JoinColumn(name = "bandeirada")
	private Bandeirada bandeirada;

	public Chamado() {

	}

	public Chamado(Integer codChamado, String origem, String destino, Date dataHora, Double distanciaKM, Cliente cliente,
			MotoTaxista motoTaxista, Bandeirada bandeirada) {
		super();
		this.codChamado = codChamado;
		this.origem = origem;
		this.destino = destino;
		this.dataHora = dataHora;
		this.distanciaKM = distanciaKM;
		this.cliente = cliente;
		this.motoTaxista = motoTaxista;
		this.bandeirada = bandeirada;
	}
	
	

	public Integer getCodChamado() {
		return codChamado;
	}

	public void setCodChamado(Integer codChamado) {
		this.codChamado = codChamado;
	}

	public String getOrigem() {
		return origem;
	}

	public void setOrigem(String origem) {
		this.origem = origem;
	}

	public String getDestino() {
		return destino;
	}

	public void setDestino(String destino) {
		this.destino = destino;
	}

	public Date getDataHora() {
		return dataHora;
	}

	public void setDataHora(Date dataHora) {
		this.dataHora = dataHora;
	}

	public Double getDistancia() {
		return distanciaKM;
	}

	public void setDistancia(Double distanciaKM) {
		this.distanciaKM = distanciaKM;
	}

	public MotoTaxista getMotoTaxista() {
		return motoTaxista;
	}

	public void setMotoTaxista(MotoTaxista motoTaxista) {
		this.motoTaxista = motoTaxista;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Bandeirada getBandeirada() {
		return bandeirada;
	}

	public void setBandeirada(Bandeirada bandeirada) {
		this.bandeirada = bandeirada;
	}
	
	

	@Override
	public String toString() {
		return "Chamado [codChamado=" + codChamado + ", origem=" + origem + ", destino=" + destino + ", dataHora="
				+ dataHora + ", distancia=" + distanciaKM + ", motoTaxista=" + motoTaxista + ", cliente=" + cliente
				+ ", bandeirada=" + bandeirada + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((codChamado == null) ? 0 : codChamado.hashCode());
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
		Chamado other = (Chamado) obj;
		if (codChamado == null) {
			if (other.codChamado != null)
				return false;
		} else if (!codChamado.equals(other.codChamado))
			return false;
		return true;
	}

	public BigDecimal precoTotal() {
		BigDecimal distancia = new BigDecimal(14.00);
		return (distancia.multiply(this.bandeirada.getValorKM()).add(this.bandeirada.getValorInicial()));
	}

}
