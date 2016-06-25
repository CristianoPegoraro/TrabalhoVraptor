package br.edu.unoesc.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@NamedQueries({ @NamedQuery(name = Funcionario.FILTRA_POR_NOME, query = "select a from Funcionario a where upper(a.nome) like ?1 "),
	@NamedQuery(name = Funcionario.FILTRA_POR_DATA, query = "select a from Funcionario a where a.data between ?1 and ?2 "),
	@NamedQuery(name = Funcionario.FUNCIONARIO_TODOS, query = "select a from Funcionario a ")})
public @Data class Funcionario implements MinhaEntidade {

	public static final String FILTRA_POR_NOME = "FILTRA_POR_NOME";
	public static final String FILTRA_POR_DATA = "FILTRA_POR_DATA";
	public static final String FUNCIONARIO_TODOS = "FUNCIONARIO_TODOS";

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	private String nome;
	private String Endereco;
	private String cpf;
	private String rg;
	private String telefone;
	private String email;
	private String setor;
	private String cargo;
	
	
	@Temporal(TemporalType.DATE)
	private Date data;
	
}
