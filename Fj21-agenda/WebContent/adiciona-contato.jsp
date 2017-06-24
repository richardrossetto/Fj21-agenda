<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	     xmlns:h="http://java.sun.com/jsf/html"
	   	 xmlns:f="http://java.sun.com/jsf/core"
	     xmlns:p="http://primefaces.org/ui">
<head>
<meta charset="UTF-8">

	<title>Adiciona Contatos</title>
	
	<link href="css/jquery.css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-ui.js"></script>

</head>
<body>
	<c:import url="cabecalho.jsp" />
	<h1>Adiciona Contatos</h1>
	
	<hr />
	<form action="adicionaContato" method="POST">
		Nome: <input type="text" name="nome"/> <br />
		Email: <input type="text" name="email"/> <br />
		Endereco: <input type="text" name="endereco"/> <br />
		Data Nascimento: <caelum:campoData id="dataNascimento"/> <br />
		
	<input type="submit" value="Gravar" />
	</form>
	
	<c:import url="rodape.jsp"></c:import>	
</body>
</html>