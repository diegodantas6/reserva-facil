package br.com.negocio

class Condominio {

	String nome
	String cnpj
	
    static constraints = {
		nome blank: false
		cnpj blank: false, unique: true
    }
}
