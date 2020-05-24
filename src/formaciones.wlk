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
	const pasajeros = tren.filter({t => t.capacidadPasajeros() > 0 })
	return pasajeros.max({p=>p.capacidadPasajeros()}).capacidadPasajeros() - pasajeros.min({p=>p.capacidadPasajeros()}).capacidadPasajeros() < 20
}
method organizar() {tren.sortBy({a,b => a.capacidadPasajeros() > b.capacidadPasajeros()})}
method estaOrganizado(){
	return tren.max({t=>t.capacidadPasajeros()}) == tren.first()
	and tren.min({t=>t.capacidadPasajeros()}) == tren.last()
}

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
