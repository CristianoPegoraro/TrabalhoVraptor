package br.edu.unoesc.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.NamedQuery;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@NamedQuery(name = Pessoa.PESSOA_TODOS, query = "select a from Pessoa a ")
public @Data class Pessoa implements MinhaEntidade {


	public static final String PESSOA_TODOS = "PESSOA_TODOS";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	private String nome;
	private String endereco;
	private String cpf;
	private String rg;
	private String telefone;
	private String email;
	
	
	@Temporal(TemporalType.DATE)
	private Date data;
	
}
