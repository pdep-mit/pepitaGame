import wollok.game.*

object pepita {

	var energia = 100
	var posicion = game.origin()

	method energia() {
		return energia
	}

	method image() {
		return "pepita.png"
	}

	method position() {
		return posicion
	}

	method come(comida) {
		energia = energia + comida.energia()
	}

	method vola(kms) {
		energia = energia - kms * 9
	}

	method irA(nuevaPosicion) {
	// TODO: Autogenerated Code !
	}

	method estaLlena() {
		// TODO: Autogenerated Code ! 
		return null
	}

}

