<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>VRaptor Blank Project</title>
</head>
<body>
	Sucesso!!!
	
	<c:forEach items="${agendaview}" var="status" >
		<br/> ${status.codigo} -
		<a href="<c:url value='/status/editar/${status.codigo}'/>">  ${status.nome}                            </a>
		<a href="<c:url value='/status/excluir/${status.codigo}'/>"> - EXCLUIR </a>
		  
		  
	</c:forEach>
	
	
	<a href="<c:url value='/status/cadastro'/>">Voltar</a>
	
	
</body>
</html>