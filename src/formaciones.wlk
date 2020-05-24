import vagones.*
import locomotora.*

class Formacion {
	
var tren = []

method cargarVagon(vagon) {tren.addAll(vagon)}
method eliminarVagon(vagon) {tren.remove(vagon)}

method cantidadPasajeros() {return tren.sum({t => t.capacidadPasajeros()})}
method vagonesPopulares() {return tren.count({t => t.capacidadPasajeros() > 50 })}
method carguero() {return tren.all({t => t.cargaMaxima() >= 1000})}	
method dispersionDePesos() {return tren.max({f => f.pesoMaximo()}).pesoMaximo() - tren.min({f => f.pesoMaximo()}).pesoMaximo() }
method cantidadBanios() {return tren.sum({t => t.banios()})}
method hacerMantenimiento() {tren.forEach({t => t.mantenimiento()})}

//los salados
method estaEquilibrado() 
{
	var conPasajeros = tren.map({t => t.capacidadPasajeros() > 0})
	return (conPasajeros.max() - conPasajeros.min()) < 20
}
method organizada() {}

//con locomotora
method velocidadMaxima() {return tren.max({f => f.velocidad()}).velocidad()}
method eficiencia() {return tren.all({f => f.esEficiente()})}
method seMueve() {return tren.sum({t => t.pesoArrastre()}) >= tren.sum({t => t.pesoMaximo()})}
method cuantosKlFaltan() {
	if(self.seMueve()){return 0} 
	else{return tren.sum({t=>t.pesoMaximo()}) - tren.sum({t => t.pesoArrastre()})	
	}
}

}
