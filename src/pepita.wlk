import wollok.game.*

object pepita {

	var energia = 100
	var posicion = game.origin()

	method image() { // Modificar
		return if (self.estaCansada()) "pepita-gris.png" else "pepita.png" // TODO: Agregar un estado intermedio
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

	method irA(nuevaPosicion) { // Completar
		if (not self.estaCansada()) {
			self.vola(posicion.distance(nuevaPosicion))
			posicion = nuevaPosicion
		}
	}

	method cantaEnergia() { // Mover al nivel?
		game.say(self, "Me queda " + energia.toString() + " de energía")
	}

	method estaCansada() {
		return energia < 0
	}

	method interactuado() { // Mover al nivel?
		const colisionados = game.colliders(self)
		if (colisionados.isEmpty()) {
			self.error("Acá no hay nada")
		}
		return colisionados.head()
	}

	method caer() {
		if (posicion.y() > 0) {
			posicion = posicion.down(1)
		}
	}

}

