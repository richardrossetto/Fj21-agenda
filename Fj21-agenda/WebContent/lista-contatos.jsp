<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


				
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>Lista Contatos</title>
</head>
<body>
	
	
	<c:import url="cabecalho.jsp" />
	
	<%--Cria lista --%>
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"/>
	<table border="1" align="center" >
			<th>Id</th>
			<th>Nome</th>
			<th>Email</th>
			<th>Endereço</th>
			<th>Data de Nascimento</th>
		
		<c:forEach var="contato" items="${dao.lista}" varStatus="id">
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
				
			</tr>
		</c:forEach>
	</table>
			

	<c:import url="rodape.jsp"></c:import>
</body>
</html>