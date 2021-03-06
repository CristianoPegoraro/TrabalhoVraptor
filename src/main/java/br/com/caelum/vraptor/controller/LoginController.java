package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;

import br.com.caelum.vraptor.Result;

@Controller
public class LoginController {

	private final Result result;

	/**
	 * @deprecated CDI eyes only
	 */
	protected LoginController() {
		this(null);
	}
	
	@Inject
	public LoginController(Result result) {
		this.result = result;
	}

	@Path("/login")
	public void login() {
		result.include("variable", "VRaptor!");
	}
	
	
	
}