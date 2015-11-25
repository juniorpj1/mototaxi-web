package dominio;

import java.io.Serializable;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@SuppressWarnings("unused")
@Entity
@Table(name = "tb_empresa")

public class Empresa implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer codEmpresa;
	private String nomeFantasia;
	private String razaoSocial;
	private String telefone;
	private String email;
	private String cnpj;
	private String logradouro;
	private String numero;
	private String bairro;
	private String cep;

	@OneToMany(mappedBy = "empresa")
	private List<MotoTaxista> motoTaxistas;

	public Empresa() {
		this.motoTaxistas = new ArrayList<MotoTaxista>();
	}

	public Empresa(Integer codEmpresa, String nomeFantasia, String razaoSocial, String telefone, String email,
			String cnpj, String logradouro, String numero, String bairro, String cep) {
		super();
		this.codEmpresa = codEmpresa;
		this.nomeFantasia = nomeFantasia;
		this.razaoSocial = razaoSocial;
		this.telefone = telefone;
		this.email = email;
		this.cnpj = cnpj;
		this.logradouro = logradouro;
		this.numero = numero;
		this.bairro = bairro;
		this.cep = cep;
		this.motoTaxistas = new ArrayList<MotoTaxista>();
	}

	public Integer getCodEmpresa() {
		return codEmpresa;
	}

	public void setCodEmpresa(Integer codEmpresa) {
		this.codEmpresa = codEmpresa;
	}

	public String getNomeFantasia() {
		return nomeFantasia;
	}

	public void setNomeFantasia(String nomeFantasia) {
		this.nomeFantasia = nomeFantasia;
	}

	public String getRazaoSocial() {
		return razaoSocial;
	}

	public void setRazaoSocial(String razaoSocial) {
		this.razaoSocial = razaoSocial;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public List<MotoTaxista> getMotoTaxistas() {
		return motoTaxistas;
	}

	public void setMotoTaxistas(List<MotoTaxista> motoTaxistas) {
		this.motoTaxistas = motoTaxistas;
	}

	public void addMotoTaxista(MotoTaxista x) {
		this.motoTaxistas.add(x);
	}

	public void removeMotoTaxista(MotoTaxista x) {
		this.motoTaxistas.remove(x);
	}

	@Override
	public String toString() {
		return "Empresa [codEmpresa=" + codEmpresa + ", nomeFantasia=" + nomeFantasia + ", razaoSocial=" + razaoSocial
				+ ", telefone=" + telefone + ", email=" + email + ", cnpj=" + cnpj + ", logradouro=" + logradouro
				+ ", numero=" + numero + ", bairro=" + bairro + ", cep=" + cep + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((codEmpresa == null) ? 0 : codEmpresa.hashCode());
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
		Empresa other = (Empresa) obj;
		if (codEmpresa == null) {
			if (other.codEmpresa != null)
				return false;
		} else if (!codEmpresa.equals(other.codEmpresa))
			return false;
		return true;
	}

	public List<Chamado> corridasPorPeriodo(Date dataInicial, Date dataFinal) {
		List<Chamado> aux = new ArrayList<Chamado>();

		for (MotoTaxista m : this.getMotoTaxistas()) {
			for (Chamado c : m.getChamados()) {
				if (c.getDataHora().getTime() >= dataInicial.getTime() && c.getDataHora().getTime() <= dataFinal.getTime()) {
					aux.add(c);
				}
			}
		}
		return aux;
	}

	public List<MotoTaxista> mototaxistasComMediaAbaixoDe(Double x) {
		List<MotoTaxista> abaixo = new ArrayList<MotoTaxista>();
		
		for(MotoTaxista z : this.motoTaxistas){
			if(z.media() < x){
				abaixo.add(z);
			}
		}
		return abaixo;	
	}

	public List<MotoTaxista> mototaxistasComMediaAcimaDe(Double x) {
		List<MotoTaxista> acima = new ArrayList<MotoTaxista>();
		
		for(MotoTaxista w : this.motoTaxistas){
			if(w.media() > x){
				acima.add(w);
			}
		}
		return acima;
	}

}
