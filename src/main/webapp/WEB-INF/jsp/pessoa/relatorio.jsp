<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/telas/cabecalho-sistema.jsp" />
<c:import url="/WEB-INF/jsp/telas/menu.jsp" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Relatorio  Cliente</title>
</head>

<body>
	<div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 clienteform">
		<div class="col-md-4">
			<div class="row">
				<h2>Relatorio de Clientes:</h2>
				<hr/>
				<!-- <form action="#" method="get">
					<div class="input-group">
						USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH
						<input class="form-control" id="system-search" name="q"
							placeholder="Pesquisar" required> <span
							class="input-group-btn">
							<button type="submit" class="btn btn-default">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</span>
					</div>
				</form> -->
			</div>
		</div>
		<form class="clienteform">
			<table class=" table table-list-search table-hover table-condensed">
				<thead>
					<tr>
						<th>Cod:</th>
						<th>Nome:</th>
						<th>Endereço:</th>
						<th>CPF:</th>
						<th>RG:</th>
						<th>Fone:</th>
						<th>E-mail:</th>
						</tr>
				</thead>


				<tbody id="myTable">
					<c:forEach items="${pessoaList}" var="pessoa">
						<tr class="">
							<td>${pessoa.codigo}</td>
							<td>${pessoa.nome}</td>
							<td>${pessoa.endereco}</td>
							<td>${pessoa.cpf}</td>
							<td>${pessoa.rg}</td>
							<td>${pessoa.telefone}</td>
							<td>${pessoa.email}</td>
							</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
		<div class="col-md-12 text-center">
			<ul class="pagination pagination-sm" id="myPager"></ul>

		</div>



	</div>
</body>
</html>

<c:import url="/WEB-INF/jsp/telas/rodape-sistema.jsp" />

