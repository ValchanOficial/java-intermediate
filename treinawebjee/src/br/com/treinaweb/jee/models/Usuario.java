package br.com.treinaweb.jee.models;

import java.io.Serializable;

public class Usuario implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -362450047400737627L;
	private int id;
	private String nome;
	private String usr_nome;
	private String usr_senha;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNomeUsuario() {
		return usr_nome;
	}

	public void setNomeUsuario(String nomeUsuario) {
		this.usr_nome = nomeUsuario;
	}

	public String getSenha() {
		return usr_senha;
	}

	public void setSenha(String senha) {
		this.usr_senha = senha;
	}
}