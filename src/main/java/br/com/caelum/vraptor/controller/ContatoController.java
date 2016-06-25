package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class ContatoController {

	private final Result result;

	/**
	 * @deprecated CDI eyes only
	 */
	protected ContatoController() {
		this(null);
	}
	
	@Inject
	public ContatoController(Result result) {
		this.result = result;
	}

	@Path("/contato")
	public void contato() {
		result.include("variable", "VRaptor!");
	}
}