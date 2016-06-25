package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.edu.unoesc.dao.StatusDAO;
import br.edu.unoesc.exception.DAOException;

import br.edu.unoesc.model.Status;

@Controller
@Path("/status")
public class StatusController {

	@Inject
	private StatusDAO statusDao;

	@Inject
	private Result result;
	
	@Inject
	private Validator validator;
	
	private Status status = new Status();

	@Get("/cadastro")
	public void cadastrostatus() {
		if (status != null) {
			result.include("status", status);
		}
		result.include("mensagem", "Cadastro Status");
	}

	@Post("/cadastrar")
	public void cadastrarstatus(Status status) {
		if (status != null) {
			try {
				statusDao.salvar(status);
			} catch (DAOException e) {
				// validator.add(new Messages());
			}
		}
		result.include("agendaview", statusDao.listar(Status.class, br.edu.unoesc.model.Status.STATUS_TODOS));
	}

	@Get("/editar/{codigo}")
	public void editar(Long codigo) {
		this.status = statusDao.buscar(Status.class, codigo);
		result.forwardTo(StatusController.class).cadastrostatus();
	}

	@Get("/excluir/{codigo}")
	public void excluir(Long codigo) {
		Status sta = statusDao.buscar(Status.class, codigo);
		try {
			statusDao.excluir(sta);
			result.forwardTo(StatusController.class).cadastrarstatus(null);
		} catch (DAOException e) {
			validator.onErrorForwardTo(StatusController.class).cadastrarstatus(null);
		}
	}

	@Get("/lista")
	 public List<Status> lista() {
	    return statusDao.listar(Status.class, Status.STATUS_TODOS);
	    
	    
	  }
}
