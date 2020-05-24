class Locomotora {
var peso
var pesoArrastre
var velocidad

method cargarPeso(kilos) {peso = kilos}
method cargarPesoArrastre(kilos) {pesoArrastre = kilos}
method cargarVelocidad(km) {velocidad = km}

method pesoMaximo(){return peso}
method pesoArrastre() {return pesoArrastre}
method velocidad() {return velocidad}

method esEficiente() {return self.pesoArrastre() / self.pesoMaximo() >= 5}

method capacidadPasajeros() {return 0}
method banios() {return 0}

		
}
