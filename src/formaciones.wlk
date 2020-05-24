import vagones.*

class Formacion {
	
var tren = []

method cargarVagon(vagon) {tren.addAll(vagon)}
method eliminarVagon(vagon) {tren.remove(vagon)}

method cantidadPasajeros() {return tren.sum({t => t.capacidadPasajeros()})}
method vagonesPopulares() {return tren.count({t => t.capacidadPasajeros() > 50 })}
method carguero() {return tren.all({t => t.cargaMaxima() >= 1000})}	
method dispersionDePesos() {return tren.max({f => f.pesoMaximo()}) - tren.min({f => f.pesoMaximo()})}
method cantidadBanios() {return tren.sum({t => t.banios()})}
method hacerMantenimiento() {tren.forEach({t => t.mantenimiento()})}

	
}
