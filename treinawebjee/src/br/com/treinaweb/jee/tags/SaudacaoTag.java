package br.com.treinaweb.jee.tags;

import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class SaudacaoTag extends BodyTagSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 9084184460113358939L;
	
	private String nome;
	private String mensagemOpcional;
	private boolean processou = false;
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	@Override
	public int doAfterBody() throws JspException {
		mensagemOpcional = getBodyContent().getString().trim();
		if(mensagemOpcional != null && !mensagemOpcional.equals("")) {
			Calendar calendar = new GregorianCalendar();
			int hora = calendar.get(calendar.HOUR_OF_DAY);
			String mensagem = "";
			if(this.mensagemOpcional != null && !this.mensagemOpcional.equals("")) {
				mensagem = mensagem + mensagemOpcional; 
			}
			try{
				if(hora >= 0 && hora <6) {
					mensagem += "Boa madrugada";
				}else if(hora >= 6 && hora <12) {
					mensagem +=  "Bom dia";
				}else if(hora >= 12 && hora <18) {
					mensagem += "Boa tarde";
				}else {
					mensagem += "Boa noite";
				}
				if(this.nome != null && !this.nome.equals("")) {
					mensagem += ", "+this.nome + "!";
				}
				mensagem += "!";
				getPreviousOut().println(mensagem);
				processou = true;
			}catch (Exception e) {
				throw new JspException(e.getMessage());
			}
		}else {
			processou = false;
		}
		return SKIP_BODY;
	}
	
	@Override
	public int doEndTag() throws JspException{
		if(!processou) {
			Calendar calendar = new GregorianCalendar();
			int hora = calendar.get(calendar.HOUR_OF_DAY);
			String mensagem = "";
			try{
				if(hora >= 0 && hora <6) {
					mensagem = "Boa madrugada";
				}else if(hora >= 6 && hora <12) {
					mensagem =  "Bom dia";
				}else if(hora >= 12 && hora <18) {
					mensagem = "Boa tarde";
				}else {
					mensagem = "Boa noite";
				}
				if(this.nome != null && !this.nome.equals("")) {
					mensagem = mensagem + ", "+this.nome + "!";
				}
				mensagem += "!";
				pageContext.getOut().println(mensagem);
			}catch (Exception e) {
				throw new JspException(e.getMessage());
			}
		}
		return EVAL_PAGE;
	}
}