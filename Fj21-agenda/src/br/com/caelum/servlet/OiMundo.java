package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "servletOiMundo", urlPatterns ={"/oi", "/ola"})
public class OiMundo extends HttpServlet {
		
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
		System.out.println("Iniciando a Servlet");
	}
	
		@Override
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			PrintWriter out = response.getWriter();
			
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Primeira Servlet</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>Oi mundo Servlet !</h1>");
			out.println("</body>");
			out.println("</html>");
			
			System.out.println("Iniciando o Service");
		}
	
		
		public void destroy(){
			super.destroy();
			System.out.println("Destruindo a Servlet");
		}
}
