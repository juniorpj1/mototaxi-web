package servico;

import servico.impl.AvaliacaoServicoImpl;
import servico.impl.BandeiradaServicoImpl;
import servico.impl.ChamadoServicoImpl;
import servico.impl.ClienteServicoImpl;
import servico.impl.EmpresaServicoImpl;
import servico.impl.MotoTaxistaServicoImpl;

public class ServicoFactory {

	
	public static AvaliacaoServico criarAvaliacaoServico(){
		return new AvaliacaoServicoImpl();
	}
	
	public static BandeiradaServico criarBandeiradaServico(){
		return new BandeiradaServicoImpl();
	}
	
	public static ChamadoServico criarChamadoServico(){
		return new ChamadoServicoImpl();
	}
	
	public static ClienteServico criarClienteServico(){
		return new ClienteServicoImpl();
	}
	
	public static EmpresaServico criarEmpresaServico(){
		return new EmpresaServicoImpl();
	}
	
	public static MotoTaxistaServico criarMotoTaxistaServico(){
		return new MotoTaxistaServicoImpl();
	}
}
