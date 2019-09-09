import personas.*

object spa {
//no se porque,pero me sale un cartel de error "se esperaba una expresion en la linea 88 solo despues de guardarlo.
//Pero mientras edito el codigo el cartel desaparece,aun asi el codigo funciona sin problemas.
	var ultimoCliente
	method atender(persona){
		persona.recibirMasajes()
		persona.darseUnBanioDeVapor() //.
		if (ultimoCliente == persona){
			persona.recibirMasajes()
		}
		ultimoCliente = persona
	}
}