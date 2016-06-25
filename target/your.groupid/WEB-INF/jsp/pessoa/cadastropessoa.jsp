<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/WEB-INF/jsp/telas/cabecalho-sistema.jsp" />
<c:import url="/WEB-INF/jsp/telas/menu.jsp" />

<div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 clienteform">
<form class=" clienteform"  action="<c:url value='/pessoa/cadastrar'/>" method="post" >
	<h3>Cadastro Clientes:</h3>
	<div class="form-group">
		<div class="row">
			
			 <input type="hidden" name="pessoa.codigo" value="${pessoa.codigo}" 
				readonly="readonly"/>
			
			
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<label class="col-md-12 control-label" for="pessoa.nome">Nome:</label>
				<div class="col-xs-12">
					<input name="pessoa.nome" type="text" placeholder="Seu Nome" class="form-control input-md" required="" value="${pessoa.nome}">
				</div>
			</div>

			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<label class="col-md-4 control-label" for="pessoa.endereco">Endereço:</label>
				<div class="col-xs-12">
					<input name="pessoa.endereco" type="text" placeholder="Rua,Bairro,Numero,Cidade" class="form-control input-md" required="" value="${pessoa.endereco}">
				</div>

			</div>

			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<label class="col-md-4 control-label" for="pessoa.cpf">CPF:</label>
				<div class="col-xs-12">
					<input name="pessoa.cpf" type="text" placeholder="Seu CPF" class="form-control input-md" required="" value="${pessoa.cpf}">
				</div>

			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<label class="col-md-4 control-label" for="pessoa.rg"> RG: </label>
				<div class="col-xs-12">
					<input name="pessoa.rg" type="text" placeholder="Seu RG" class="form-control input-md" required="" value="${pessoa.rg}">
				</div>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<label class="col-md-4 control-label" for="pessoa.telefone">Telefone:</label>
				<div class="col-xs-12">
					<input name="pessoa.telefone" type="tel" placeholder="Seu numero de Telefone" class="form-control input-md" required="" value="${pessoa.telefone}">
				</div>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
				<label class="col-md-4 control-label" for="pessoa.email">E-mail:</label>
				<div class="col-xs-12">
					<input name="pessoa.email" type="email" placeholder="Endereço de E-mail" class="form-control input-md"  value="${pessoa.email}">
				</div>
			</div>
		</div>
		
		
	</div>

	
		<div class="col-xs-12 col btn-group botoescliente">
			<div class="row">
				<div class="col-xs-6 col-sm-3 col-md-2">
					<button class="btn btn-md btn-primary btn-block" type="submit" value="Enviar">
						Salvar
					</button>
				</div>
				
			</div>
		</div>
		
		
	
</form>

<form class="clienteform"  action="<c:url value='/pessoa/lista'/>" method="get" >

		<div class="col-xs-12 col btn-group botoespesquisa">
			<div class="row">
				<div class="col-xs-6 col-sm-3 col-md-2">
					<button class="btn btn-md btn-primary btn-block"  type="submit" value="Enviar" >
						Pesquisar
					</button>
				</div>
				
			</div>
		</div>
		</form>		

</div>

<c:import url="/WEB-INF/jsp/telas/rodape-sistema.jsp" />


