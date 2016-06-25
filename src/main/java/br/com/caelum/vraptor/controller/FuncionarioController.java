package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.FuncionarioDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Funcionario;


@Controller
@Path("/funcionario")
public class FuncionarioController {

	@Inject
	private FuncionarioDAO funcionarioDao;

	@Inject
	private Result result;
	
	@Inject
	private Validator validator;
	
	private Funcionario funcionario = new Funcionario();

	@Get("/cadastro")
	public void cadastrofuncionario() {
		if (funcionario != null) {
			result.include("funcionario", funcionario);
		}
		result.include("mensagem", "Cadastro Cliente");
	}

	@Post("/cadastrar")
	public void cadastrarfuncionario(Funcionario funcionario) {
		if (funcionario != null) {
			try {
				funcionarioDao.salvar(funcionario);
			} catch (DAOException e) {
				// validator.add(new Messages());
			}
		}
		result.include("agendaview", funcionarioDao.listar(Funcionario.class, br.edu.unoesc.model.Funcionario.FUNCIONARIO_TODOS));
	}

	@Get("/editar/{codigo}")
	public void editar(Long codigo) {
		this.funcionario = funcionarioDao.buscar(Funcionario.class, codigo);
		result.forwardTo(FuncionarioController.class).cadastrofuncionario();
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Funcionario fun = funcionarioDao.buscar(Funcionario.class, codigo);
		try {
			funcionarioDao.excluir(fun);
			result.forwardTo(FuncionarioController.class).cadastrarfuncionario(null);
		} catch (DAOException e) {
			validator.onErrorForwardTo(FuncionarioController.class).cadastrarfuncionario(null);
		}
	}
	
	@Get("/lista")
	 public List<Funcionario> lista() {
	    return funcionarioDao.listar(Funcionario.class, Funcionario.FUNCIONARIO_TODOS);
	    
	    
	  }
	
	@Get("/relatorio")
	 public List<Funcionario> relatorio() {
	    return funcionarioDao.listar(Funcionario.class, Funcionario.FUNCIONARIO_TODOS);
	    
	    
	  }
	

}
