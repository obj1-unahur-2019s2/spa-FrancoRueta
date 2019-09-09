
object olivia {
	var concentracion = 6
	
	method recibirMasajes(){
		concentracion += 3
	}
	method discutir(){
		concentracion -= 1
	}
	method gradoDeConcentracion(){
		return(concentracion)
	}
	
	
	method darseUnBanioDeVapor(){
		//para no dejar un null.
		return('Gracias,me siento mucho mejor')	
	}
}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method esFeliz() { return esFeliz }
	method tieneSed() { return tieneSed }
	method peso() { return peso }
	
	method recibirMasajes() { esFeliz = true }
	method darseUnBanioDeVapor() { peso -= 500 ; tieneSed = true }
	method tomarAgua() { tieneSed = false }
	method comerFideos() { peso += 250; tieneSed = true }
	method correr() { peso -= 300 }
	method verElNoticiero() { esFeliz = false }
	
	method estaPerfecto() { return self.esFeliz() and not self.tieneSed() and self.peso().between(50000, 70000) }
	method mediodiaEnCasa() { 
		self.comerFideos()
		self.tomarAgua()
		self.verElNoticiero()
	}
}

object ramiro {
	var contractura = 0
	var pielGrasosa = false
	
	method recibirMasajes() {
		if (contractura == 1){
			contractura -= 1
		}
		else if (contractura >= 2) {
			contractura -= 2			
		}
		else {} 
	}
	method darseUnBanioDeVapor(){
		pielGrasosa = false
	}
	method comerseUnBigMac() {
		pielGrasosa = true
	}
	method bajarALaFosa() {
		pielGrasosa = true
		contractura += 1
	}
	method jugarAlPaddle() {
		contractura += 3
	}
	
	method diaDeTrabajo() {
		self.bajarALaFosa()
		self.comerseUnBigMac()
		self.bajarALaFosa()
	}
}

object spa {
//no se porque,pero me sale un cartel de error "se esperaba una expresion" en la linea 87 solo despues de guardarlo.
//Pero mientras edito el codigo el cartel desaparece,aun asi el codigo funciona sin problemas.
//EDIT 2:Lo hablamos en clase y es un error de wollok.
	var ultimoCliente
	method atender(persona){
		persona.recibirMasajes()
		persona.darseUnBanioDeVapor() //.punto mencionado arriba.
		if (ultimoCliente == persona){
			persona.recibirMasajes()
		}
		ultimoCliente = persona
	}
}






