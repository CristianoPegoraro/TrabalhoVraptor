<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/telas/cabecalho-sistema.jsp" />
<c:import url="/WEB-INF/jsp/telas/menu.jsp" />

<div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 clienteform">
	<form class="clienteform " action="/your.groupid/status/cadastrar" method="post">
		<h3>Status:</h3>
		<div class="form-group">
			<div class="row">

				<input type="hidden" name="status.codigo" value="${status.codigo}"
					readonly="readonly" />

				<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
					<label class="col-md-4 control-label" for="status.nomecliente">Status:</label>
					<div class="col-xs-12">
						<input name="status.nomecliente" type="text" placeholder=""
							class="form-control input-md" 
							value="${status.nome}">
					</div>
				</div>

				
			</div>


		</div>

<hr/>
		<div class="col-xs-12 col botoescliente">
			<a class="btn btn-md btn-default"
				href="<c:url value='/status/lista'/>">Pesquisar</a>
			<button class="btn btn-md btn-primary" type="submit" value="Enviar">Salvar</button>
		</div>
	</form>

</div>


<c:import url="/WEB-INF/jsp/telas/rodape-sistema.jsp" />


