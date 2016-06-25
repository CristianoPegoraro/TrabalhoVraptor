<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/telas/cabecalho-sistema.jsp" />
<c:import url="/WEB-INF/jsp/telas/menu.jsp" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Relatorio Servico</title>
</head>

<body>
	<div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 clienteform">
		<div class="col-md-4">
			<div class="row">
				<h2>Relatorio de Servicos:</h2>
				
				
				 <form action="#" method="get">
					<div class="input-group">
						
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
					<tr>
						<th>Cod:</th>
						<th>Cliente:</th>
						<th>Status:</th>
						<th>Data Inicial:</th>
						<th>Data Final:</th>
						<th>Garantia:</th>
						</tr>
				</thead>


				<tbody id="myTable">
					<c:forEach items="${servicoList}" var="servico">
						<tr class="">
							<td>${servico.codigo}</td>
							<td>${servico.nomecliente}</td>
							<td>${servico.status}</td>
							<td>${servico.datainicial}</td>
							<td>${servico.datafinal}</td>
							<td>${servico.garantia}</td>
							
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

