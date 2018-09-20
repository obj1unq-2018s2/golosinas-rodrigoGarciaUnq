import golosinas.*

object mariano {
	var bolsaDeGolosinas = []
	var bolsaDeGolosinasMordidas = [] //esto lo hice porque no encontré otra alternativa
	                                  // para no usar el foreach en prboar golosinas.
	
	method comprar(golosina) { 
		bolsaDeGolosinas.add(golosina)
		golosina.mordisco()
		bolsaDeGolosinasMordidas.add(golosina)
	}
	method desechar(golosina) {bolsaDeGolosinas.remove(golosina)}
	method probarGolosinas() {return bolsaDeGolosinasMordidas}
	method hayGolosinaSinTACC(){
		return bolsaDeGolosinas.any{golosina => golosina.libreGluten()}
	}
	method preciosCuidados(){
		return bolsaDeGolosinas.all{golosina => golosina.precio()<10 }
	}
	method golosinaDeSabor(unSabor){
		return bolsaDeGolosinas.any{golosina => golosina.gusto() == unSabor}
	}
	method  sabores(){
		return bolsaDeGolosinas.map{golosina => golosina.gusto()}.asSet()
	}
	method golosinaMasCara(){
		return bolsaDeGolosinas.max{golosina => golosina.precio()}
	}
	method pesoGolosinas(){
		return bolsaDeGolosinas.sum{golosina => golosina.peso()}
	}
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.removesAll(bolsaDeGolosinas)
	}
	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.removeAll(self.sabores())
	}
	
	method golosinas() {return bolsaDeGolosinas }
	

}

