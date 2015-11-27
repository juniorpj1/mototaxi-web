package aplicacao;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import dominio.Avaliacao;
import dominio.Bandeirada;
import dominio.Chamado;
import dominio.Cliente;
import dominio.Empresa;
import dominio.MotoTaxista;


public class Instanciacao {

	public static void main(String args[]) throws ParseException {

		Cliente c1 = new Cliente(null,"Diego","3224-1232","333.444.003-08","d123");
		Cliente c2 = new Cliente(null,"Bruno","3235-2032","111.222.333-10","b123");
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date dt1 = sdf.parse("09/09/2015");		
		Date dt2 = sdf.parse("30/09/2015");		
				
		Empresa emp1 = new Empresa(null, "Entregas ltda", "Mobilização de Serviços de Mototaxi", "080077342", "empresa@empresa.com",
		"123456", "Logradouro A", "123", "Bairro A", "38400-045");
		
		MotoTaxista mt1 = new MotoTaxista(null,"Mario","GTE1234",false,emp1);
		MotoTaxista mt2 = new MotoTaxista(null,"Joao","GRN4123",true,emp1);
		
		Avaliacao av1 = new Avaliacao(null, 5.0,"Ótimo",c1,mt1);
		Avaliacao av2 = new Avaliacao(null, 3.0,"Bom",c2,mt2);
		
		Bandeirada b1 = new Bandeirada(null, new BigDecimal(10.00), new BigDecimal(3.00));
		Bandeirada b2 = new Bandeirada(null, new BigDecimal(15.00), new BigDecimal(3.50));
		
		Chamado ch1 = new Chamado(null,"Tocantins","Cruzeiro do Sul",dt1,14.0,c1,mt1, b1);
		Chamado ch2 = new Chamado(null,"Planalto","Martins",dt2,5.0,c2,mt2, b2);
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("meujpa");
		EntityManager em = emf.createEntityManager();

		em.getTransaction().begin();

		em.persist(c1);
		em.persist(c2);
		em.persist(emp1);
		em.persist(mt1);
		em.persist(mt2);
		em.persist(av1);
		em.persist(av2);
		em.persist(b1);
		em.persist(b2);
		em.persist(ch1);
		em.persist(ch2);

		em.getTransaction().commit();

		System.out.println("Pronto!");
		
		em.close();
		emf.close();
	}
}
