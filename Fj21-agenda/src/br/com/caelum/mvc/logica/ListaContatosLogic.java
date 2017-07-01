package br.com.caelum.mvc.logica;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class ListaContatosLogic implements Logica{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		Connection connection = (Connection) req.getAttribute("conexao");
		//Montando a lista de contato
		List<Contato> contatos = new ContatoDao(connection).getLista();
		
		//Guardando a lista do request
		req.setAttribute("contatos", contatos);
		return "lista-contatos.jsp";
	}

}
