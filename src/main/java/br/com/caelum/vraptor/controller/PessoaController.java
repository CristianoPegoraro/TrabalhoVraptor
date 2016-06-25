package br.com.caelum.vraptor.controller;





import java.util.List;

import javax.inject.Inject;


import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.PessoaDAO;
import br.edu.unoesc.exception.DAOException;
import br.edu.unoesc.model.Pessoa;

@Controller
@Path("/pessoa")
public class PessoaController {

	@Inject
	private PessoaDAO pessoaDao;

	@Inject
	private Result result;
	
	@Inject
	private Validator validator;
	
	private Pessoa pessoa = new Pessoa();

	@Get("/cadastro")
	public void cadastropessoa() {
		if (pessoa != null) {
			result.include("pessoa", pessoa);
		}
		result.include("mensagem", "Cadastro Cliente");
	}

	@Post("/cadastrar")
	public void cadastrarpessoa(Pessoa pessoa) {
		if (pessoa != null) {
			try {
				pessoaDao.salvar(pessoa);
			} catch (DAOException e) {
				// validator.add(new Messages());
			}
		}
		result.include("agendaview", pessoaDao.listar(Pessoa.class, Pessoa.PESSOA_TODOS));
		
	}

	@Get("/editar/{codigo}")
	public void editar(Long codigo) {
		this.pessoa = pessoaDao.buscar(Pessoa.class, codigo);
		result.forwardTo(PessoaController.class).cadastropessoa();
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Pessoa pes = pessoaDao.buscar(Pessoa.class, codigo);
		try {
			pessoaDao.excluir(pes);
			result.forwardTo(PessoaController.class).cadastrarpessoa(null);
		} catch (DAOException e) {
			validator.onErrorForwardTo(PessoaController.class).cadastrarpessoa(null);
		}
		
	}

	@Get("/lista")
	 public List<Pessoa> lista() {
	    return pessoaDao.listar(Pessoa.class, Pessoa.PESSOA_TODOS);
	    
	    
	  }
	
	@Get("/relatorio")
	 public List<Pessoa> relatorio() {
	    return pessoaDao.listar(Pessoa.class, Pessoa.PESSOA_TODOS);
	    
	    
	  }
	
	

	
	
}
