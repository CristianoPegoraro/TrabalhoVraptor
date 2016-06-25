package br.edu.unoesc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@Entity

@NamedQuery(name = Status.STATUS_TODOS, query = "select a from Status a ")
public class Status implements MinhaEntidade {

	public static final String STATUS_TODOS = "STATUS_TODOS";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long codigo;
	private String nome;
	
	
		
}
