<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/telas/cabecalho-sistema.jsp" />
<c:import url="/WEB-INF/jsp/telas/menu.jsp" />

<div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 clienteform">
	<form class="clienteform " action="/your.groupid/servico/cadastrar" method="post">
		<h3>Ordem de Servico:</h3>
		<div class="form-group">
			<div class="row">

				<input type="hidden" name="servico.codigo" value="${servico.codigo}"
					readonly="readonly" />

				<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
					<label class="col-md-4 control-label" for="servico.nomecliente">Cliente:</label>
					<div class="col-xs-12">
						<input name="servico.nomecliente" type="text" placeholder=""
							class="form-control input-md" 
							value="${servico.nomecliente}">
					</div>
				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
					<label class="col-md-4 control-label" for="servico.nomefuncionario">Técnico/Responsavel:</label>
					<div class="col-xs-12">
						<input name="servico.nomefuncionario" type="text" placeholder=""
							class="form-control input-md" required=""
							value="${servico.nomefuncionario}">
					</div>

				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
					<label class="col-md-4 control-label" for="servico.status">Status:</label>
					<div class="col-xs-12">
						<!-- <input name="" type="text" placeholder=" " class="form-control input-md" required="" value=""> -->
						<select name="servico.status" type="text" class="form-control"
							value="${servico.status}">
							<c:forEach items="${status}" var="stato">
								<c:if test="${servico.status == stato.codigo}">
								 	<option selected value="${stato.codigo}">${stato.nome}</option>
								 </c:if>
								 <c:if test="${servico.status != stato.codigo}">
								 	<option value="${stato.codigo}">${stato.nome}</option>
								 </c:if>
							</c:forEach>
						</select>
					</div>
				</div>


				<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
					<label class="col-md-12 control-label" for="servico.datainicial">
						Data Inicial: </label>
					<div class="col-xs-12">
						<input name="servico.datainicial" type="text"
							class="form-control input-md" value="${servico.datainicial}">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
					<label class="col-md-12 control-label" for="servico.datafinal">Data
						Final:</label>
					<div class="col-xs-12">
						<input name="servico.datafinal" type="text" placeholder=""
							class="form-control input-md" value="${servico.datafinal}">
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
					<label class="col-md-4 control-label" for="servico.garantia">Garantia:</label>
					<div class="col-xs-12">
						<input name="servico.garantia" type="text" placeholder=""
							class="form-control input-md" value="${servico.garantia}">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
					<label class="col-md-4 control-label" for="servico.descricao">Descriçao:</label>
					<div class="col-xs-12">
						<input name="servico.descricao" type="text"
							class="form-control input-md" value="${servico.descricao}">
						<%-- <textarea name="servico.descricao" type="text" class="form-control input-md"
						rows="3" required="" value="${servico.descricao}"></textarea> --%>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
					<label class="col-md-4 control-label" for="servico.defeito">Defeito:</label>
					<div class="col-xs-12">
						<input name="servico.defeito" type="text"
							class="form-control input-md" value="${servico.defeito}">
						<%-- <textarea name="servico.defeito" type="text" class="form-control"
						rows="3" value="${servico.defeito }"></textarea> --%>
					</div>
				</div>

				<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
					<label class="col-md-4 control-label" for="servico.observacao">Observação:</label>
					<div class="col-xs-12">
						<input name="servico.observacao" type="text"
							class="form-control input-md" value="${servico.observacao}">
						<%-- <textarea name="servico.observacao" type="text"
						class="form-control" rows="3" value="${servico.observacao}"></textarea> --%>
					</div>
				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6 ">
					<label class="col-md-4 control-label" for="servico.laudo">Laudo
						Técnico:</label>
					<div class="col-xs-12">
						<textarea name="servico.laudo" type="text" class="form-control"
						rows="3" >${servico.laudo}</textarea>
					</div>
				</div>

			</div>


		</div>

<hr/>
		<div class="col-xs-12 col botoescliente">
			<a class="btn btn-md btn-default"
				href="<c:url value='/servico/lista'/>">Pesquisar</a>
			<button class="btn btn-md btn-primary" type="submit" value="Enviar">Salvar</button>
		</div>
	</form>

</div>


<c:import url="/WEB-INF/jsp/telas/rodape-sistema.jsp" />


