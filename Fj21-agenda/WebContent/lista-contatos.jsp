<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


				
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.css" />
 <link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap-theme.min.css" />
 <script src="resources/bootstrap/js/bootstrap.min.js"></script>
 

<title>Lista Contatos</title>
</head>
<body>
	
	<div class="container">
	
		<div class="navbar navbar-fixed-top" role="navigation">
		   <div class="container">
		       <c:import url="cabecalho.jsp" />
		     
		     <div class="navbar-collapse collapse">
		        <div class="row" style="padding-top: 10px;">
		           <a href="adiciona-contato.jsp" class="btn btn-sm btn-success active navbar-right" role="button">Adicionar um novo contato</a>
		         
		        </div>
		     </div>
		     
		
		   </div>
		
	
	
	<%--Cria lista 
	Não se usa código java dentro da página JSP
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/>
	
	--%>
	
	
	
 
  
 


	
	<div class="panel panel-default">
	
		 <!-- Default panel contents -->
	  <div class="panel-heading">Lista de Contatos</div>
	  <div class="panel-body">
	  
	<table class="table" border="1">
			<th>Id</th>
			<th>Nome</th>
			<th>Email</th>
			<th>Endereço</th>
			<th>Data de Nascimento</th>
			<th>Funções</th>
		
		<c:forEach var="contato" items="${contatos}" varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }" align="left">
				<td>${id.count}</td>
				<td>${contato.nome}</td>
					<td>
						<c:choose>
							<c:when test="${not empty contato.email}">
								<a href="mailto:${contato.email}">${contato.email}</a>
							</c:when>
							
							<c:otherwise>
								Email não informado
							</c:otherwise>
						</c:choose>	
					</td>
				<td>${contato.endereco}</td>
				
				<td align="center">
					<fmt:formatDate value="${contato.dataNascimento.time}" 
					pattern="dd/MM/yyyy" />
				</td>
				
				<td><a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a></td>
			</tr>
		</c:forEach>
	</table>
			

	<c:import url="rodape.jsp"></c:import>
	</div>
	</div>
	</div>
</body>
</html>