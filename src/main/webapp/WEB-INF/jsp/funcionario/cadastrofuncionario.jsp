<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/telas/cabecalho-sistema.jsp" />
<c:import url="/WEB-INF/jsp/telas/menu.jsp" />

<div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 clienteform">
<form class=" clienteform"  action="<c:url value='/funcionario/cadastrar'/>" method="post" >
	<h3>Cadastro Funcionario:</h3>
	<div class="form-group">
		<div class="row">
			
			 <input type="hidden" name="funcionario.codigo" value="${funcionario.codigo}" 
				readonly="readonly"/>
			
			
			<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<label class="col-md-12 control-label" for="funcionario.nome">Nome:</label>
				<div class="col-xs-12">
					<input name="funcionario.nome" type="text" placeholder="Nome" class="form-control input-md" required="" value="${funcionario.nome}">
				</div>
			</div>

			<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<label class="col-md-4 control-label" for="funcionario.endereco">Endereço:</label>
				<div class="col-xs-12">
					<input name="funcionario.endereco" type="text" placeholder="Rua,Bairro,Numero,Cidade" class="form-control input-md" required="" value="${funcionario.endereco}">
				</div>

			</div>

			<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<label class="col-md-4 control-label" for="funcionario.cpf">CPF:</label>
				<div class="col-xs-12">
					<input name="funcionario.cpf" type="text" placeholder="Seu CPF" class="form-control input-md" required="" value="${funcionario.cpf}">
				</div>

			</div>
			<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<label class="col-md-4 control-label" for="funcionario.rg"> RG: </label>
				<div class="col-xs-12">
					<input name="funcionario.rg" type="text" placeholder="Seu RG" class="form-control input-md" required="" value="${funcionario.rg}">
				</div>
			</div>
			<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<label class="col-md-4 control-label" for="funcionario.telefone">Telefone:</label>
				<div class="col-xs-12">
					<input name="funcionario.telefone" type="tel" placeholder="Seu numero de Telefone" class="form-control input-md" required="" value="${funcionario.telefone}">
				</div>
			</div>
			<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<label class="col-md-4 control-label" for="funcionario.email">E-mail:</label>
				<div class="col-xs-12">
					<input name="funcionario.email" type="email" placeholder="Endereço de E-mail" class="form-control input-md" required="" value="${funcionario.email}">
				</div>
			</div>
			<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<label class="col-md-4 control-label" for="funcionario.setor">Setor:</label>
				<div class="col-xs-12">
					<input name="funcionario.setor" type="text" placeholder="Administrativo,Contabil,TI," class="form-control input-md" required="" value="${funcionario.setor}">
				</div>
			</div>
			<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<label class="col-md-4 control-label" for="funcionario.telefone">Cargo:</label>
				<div class="col-xs-12">
					<input name="funcionario.cargo" type="text" placeholder="Gerente,Técnico,Suporte" class="form-control input-md" required="" value="${funcionario.cargo}">
				</div>
			</div>
		</div>
		
		
	</div>

	
		


<div class="col-xs-12 col botoescliente">
			<a class="btn btn-md btn-default"
				href="<c:url value='/funcionario/lista'/>">Pesquisar</a>
			<button class="btn btn-md btn-primary" type="submit" value="Enviar">Salvar</button>
		</div>






</form>






</div>
<c:import url="/WEB-INF/jsp/telas/rodape-sistema.jsp" />


