<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/telas/cabecalho-sistema.jsp" />
<c:import url="/WEB-INF/jsp/telas/menu.jsp" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Pesquisa Funcionario</title>
</head>

<body>
	<div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 clienteform">
		<div class="col-md-3">
			<div class="row">
				<h2>Funcionarios:</h2>
				<form action="#" method="get">
					<div class="input-group">
						<!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
						<input class="form-control" id="system-search" name="q"
							placeholder="Pesquisar" required> <span
							class="input-group-btn">
							<button type="submit" class="btn btn-default">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</span>
					</div>
				</form>
			</div>
		</div>
		
		<form class="clienteform">
			<table class=" table table-list-search table-hover table-condensed">
				<thead>
				
					<tr class="funcionariocolor">
						<th>Cod:</th>
						<th>Nome:</th>
						<th>Cargo:</th>
						<th>Editar</th>
						<th>Excluir</th>
					</tr>
				</thead>


				<tbody id="myTable">
					<c:forEach items="${funcionarioList}" var="funcionario">
						<tr class="">
							<td>${funcionario.codigo}</td>
							<td>${funcionario.nome}</td>
							<td>${funcionario.cargo}</td>
							<td><a
								href="<c:url value='/funcionario/editar/${funcionario.codigo}'/>">
									Editar</a></td>
							<td><a
								href="<c:url value='/funcionario/excluir/${funcionario.codigo}'/>">
									Excluir </a></td>


						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
		<a href="<c:url value='/funcionario/cadastro'/>"><button
				class="btn btn-success">Voltar</button></a>

		<div class="col-md-12 text-center">
			<ul class="pagination pagination-sm" id="myPager"></ul>

		</div>



	</div>
</body>
</html>

<c:import url="/WEB-INF/jsp/telas/rodape-sistema.jsp" />

