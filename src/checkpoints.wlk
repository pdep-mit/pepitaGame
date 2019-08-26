import wollok.game.*

object nido {

	method image() {
		return "llegada.png"
	}

	method position() {
		return game.at(7, 7)
	}

	method estaLogrado() {
		return not game.colliders(self).isEmpty()
	}

}

object hijo {

	var fueAlimentado = false

	method image() {
		return "pepona.png"
	}

	method come(comida) {
		fueAlimentado = true
	}

	method estaLogrado() {
		return fueAlimentado
	}

}

