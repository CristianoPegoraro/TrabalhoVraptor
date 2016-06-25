<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>VRaptor Blank Project</title>
</head>
<body>
	Sucesso!!!
	
	<c:forEach items="${agendaview}" var="servico" >
		<br/> ${servico.codigo} -
		<a href="<c:url value='/servico/editar/${servico.codigo}'/>">  ${servico.nomecliente} ${servico.nomefuncionario} ${servico.status} ${servico.datainicial} ${servico.datafinal}  
		${servico.garantia} ${servico.descricao} ${servico.defeito} ${servico.observacao} ${servico.laudo}  </a>
		
		
		<a href="<c:url value='/servico/excluir/${servico.codigo}'/>"> - EXCLUIR </a>
		  
		  
	</c:forEach>
	
	
	<a href="<c:url value='/servico/cadastro'/>">Voltar</a>
	
	
</body>
</html>