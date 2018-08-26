package br.com.treinaweb.jee.models;

import java.io.Serializable;

public class Usuario implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -362450047400737627L;
	private int id;
	private String nome;
	private String usr_login;
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

	public String getusr_login() {
		return usr_login;
	}

	public void setusr_login(String nomeUsuario) {
		this.usr_login = nomeUsuario;
	}

	public String getusr_senha() {
		return usr_senha;
	}

	public void setusr_senha(String senha) {
		this.usr_senha = senha;
	}
}