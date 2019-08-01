import wollok.game.*

object manzana {
	method image() = "manzana.png"
	method position() = game.at(1, 7)
	
	method energia() = 80
}

object alpiste {
	method image() = "alpiste.png"
	method position() = game.at(2, 7)
	
	method energia() = 50
}
