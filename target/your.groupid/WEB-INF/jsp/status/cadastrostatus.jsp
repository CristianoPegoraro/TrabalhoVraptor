<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VRaptor Blank Project</title>
</head>
<body>
	${mensagem}
	
	<form action="<c:url value='/status/cadastrar'/>" method="post">
		<br/>Codigo: <input type="text" 
				name="status.codigo" value="${status.codigo}" 
				readonly="readonly"/>
		<br/>Nome: <input type="text" 
				name="status.nome" value="${status.nome}"/>
				
		<br/><input type="submit" value="Enviar" />
	</form>
	
</body>
</html>