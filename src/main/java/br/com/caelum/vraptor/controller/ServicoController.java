package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.ServicoDAO;
import br.edu.unoesc.dao.StatusDAO;
import br.edu.unoesc.exception.DAOException;

import br.edu.unoesc.model.Servico;
import br.edu.unoesc.model.Status;

@Controller
@Path("/servico")
public class ServicoController {

	@Inject
	private ServicoDAO servicoDao;

	@Inject
	private StatusDAO statusDao;

	@Inject
	private Result result;
	
	@Inject
	private Validator validator;
	
	private Servico servico = new Servico();

	@Get("/cadastro")
	public void cadastroservico() {
		if (servico != null) {
			result.include("servico", servico);
		}
		result.include("status", statusDao.listar(Status.class, Status.STATUS_TODOS));
		result.include("mensagem", "Ordem de Servico");
	}

	@Post("/cadastrar")
	public void cadastrarservico(Servico servico) {
		if (servico != null) {
			try {
				servicoDao.salvar(servico);
			} catch (DAOException e) {
				// validator.add(new Messages());
			}
		}
		result.include("agendaview", servicoDao.listar(Servico.class, Servico.SERVICO_TODOS));
	}

	@Get("/editar/{codigo}")
	public void editar(Long codigo) {
		this.servico = servicoDao.buscar(Servico.class, codigo);
		result.include("status", statusDao.listar(Status.class, Status.STATUS_TODOS));
		result.forwardTo(ServicoController.class).cadastroservico();
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Servico serv = servicoDao.buscar(Servico.class, codigo);
		try {
			servicoDao.excluir(serv);
			result.forwardTo(ServicoController.class).cadastrarservico(null);
		} catch (DAOException e) {
			validator.onErrorForwardTo(ServicoController.class).cadastrarservico(null);
		}
	}
	@Get("/lista")
	 public List<Servico> lista() {
	    return servicoDao.listar(Servico.class, Servico.SERVICO_TODOS);
	    
	    
	  }
	
	@Get("/relatorio")
	 public List<Servico> relatorio() {
	    return servicoDao.listar(Servico.class, Servico.SERVICO_TODOS);
	    
	    
	  }
}
