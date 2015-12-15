package dao;

import dao.jpa.AvaliacaoDaoImpl;
import dao.jpa.BandeiradaDaoImpl;
import dao.jpa.ChamadoDaoImpl;
import dao.jpa.ClienteDaoImpl;
import dao.jpa.EmpresaDaoImpl;
import dao.jpa.MotoTaxistaDaoImpl;

public class DaoFactory {
	
	public static AvaliacaoDao criarAvaliacaoDao(){
		return new AvaliacaoDaoImpl();
	}
	
	public static BandeiradaDao criarBandeiradaDao(){
		return new BandeiradaDaoImpl();
	}
	
	public static ChamadoDao criarChamadoDao(){
		return new ChamadoDaoImpl();
	}
	
	public static EmpresaDao criarEmpresaDao(){
		return new EmpresaDaoImpl();
	}
	
	public static MotoTaxistaDao criarMotoTaxistaDao(){
		return new MotoTaxistaDaoImpl();
	}
	
	public static ClienteDao criarClienteDao(){
		return new ClienteDaoImpl();
	}
	
	
	
}
