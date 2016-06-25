<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/telas/cabecalho-sistema.jsp" />
<c:import url="/WEB-INF/jsp/telas/menu.jsp" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Pesquisa Ordem</title>
</head>

<body>
	<div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 clienteform">
		<h2>Ordens de Serviço:</h2>
		<form action="#" method="get">
			<div class="well well-sm">
				<div class="input-group col-sm-3 col-sm-offset-9">
					<!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
					<input class="form-control" id="system-search" name="q"
						placeholder="Pesquisar" required> <span
						class="input-group-btn">
						<button type="submit" class="btn btn-default">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</span>
				</div>

			</div>
		</form>
		<div class="table-responsive">
			<table class=" table table-list-search table-hover table-condensed">
				<thead>
					<tr>
						<th>Cod:</th>
						<th>Cliente:</th>
						<th>Técnico:</th>
						<th>Editar</th>
						<th>Excluir</th>
					</tr>
				</thead>
				<tbody id="myTable">
					<c:forEach items="${servicoList}" var="servico">
						<tr class="">
							<td>${servico.codigo}</td>
							<td>${servico.nomecliente}</td>
							<td>${servico.nomefuncionario}</td>
							<td><a
								href="<c:url value='/servico/editar/${servico.codigo}'/>">
									Editar</a></td>
							<td><a
								href="<c:url value='/servico/excluir/${servico.codigo}'/>">
									Excluir </a></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<a href="<c:url value='/servico/cadastro'/>"><button
			class="btn btn-success">Voltar</button></a>

	<div class="col-md-12 text-center">
		<ul class="pagination pagination-sm" id="myPager"></ul>

	</div>





</body>
</html>

<c:import url="/WEB-INF/jsp/telas/rodape-sistema.jsp" />

