package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/contador")
public class Contador extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5740298932033667386L;
	private int contador = 0; //variavel de instancia
	
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
		System.out.println("Iniciando a Servlet");
	}
	
	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		System.out.println("Iniciando o Service");
		contador++;// A cada requisicao a mesma variavel é incrementada
		
		//recebe o Writer
		PrintWriter out = response.getWriter();
		
		//escreve o texto html
		out.println("<html>");
		out.println("<body>");
		out.println("Contador agora é: " + contador);
		out.println("</body>");
		out.println("</html>");
		
	}
	
	@Override
	public void destroy() {
		super.destroy();
		System.out.println("Destruindo a Servlet");
	}

}
