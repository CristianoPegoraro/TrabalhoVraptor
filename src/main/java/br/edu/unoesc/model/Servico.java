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

@Entity
@NamedQuery(name = Servico.SERVICO_TODOS, query = "select a from Servico a ")
public @Data class Servico implements MinhaEntidade {


	public static final String SERVICO_TODOS = "SERVICO_TODOS";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
/*	private Pessoa pessoa_nome;
	private Funcionario funcionario_nome;*/
	private String nomecliente;
	private String nomefuncionario;
	private String status;
	private String datainicial;
	private String datafinal;
	private String garantia;
	private String descricao;
	private String defeito;
	private String observacao;
	private String laudo;
	
	
	
	@Temporal(TemporalType.DATE)
	private Date data;
	
}
