class VagonPasajeros {

var largo
var ancho
var ordenado = false
var banio = false

method cargarLargo(unaMedida) {largo = unaMedida}
method cargarAncho(unaMedida) {ancho = unaMedida} 	

method pasajerosMaxima() {if(ancho.between(0,3)){return largo*8} else{return largo*10}}
method ordenVagon() {ordenado = not ordenado} 

method capacidadPasajeros() {if(ordenado){return self.pasajerosMaxima()} else{return self.pasajerosMaxima() - 15}}

method tieneBanio() {banio = not banio}

method cargaMaxima() {
	if(banio) {return 300}
	else {return 800}}

method pesoMaximo() {return 2000 + self.capacidadPasajeros()*80 + self.cargaMaxima()}

method banios(){( if(banio){return 1} else{return 0})}

method mantenimiento() {ordenado = true}
}


class VagonCarga {

var cargaIdeal
var maderas

method cargaIdeal(cantidad) {cargaIdeal = cantidad}
method maderasSueltas(cantidad) {maderas = cantidad}

method capacidadPasajeros() {return 0}

method cargaMaxima() {return cargaIdeal - maderas*400}
method maderas() {return maderas}

method pesoMaximo() {return 1500 + self.cargaMaxima()}

method banios() {return 0}

method mantenimiento() {maderas = 0.max(maderas - 2) }

}

class VagonDormitorio {

var compartimientos
var camas

method cargarCompartimientos(cantidad) {compartimientos = cantidad}
method cargarCamas (cantidad) {camas = cantidad}

method capacidadPasajeros() {return compartimientos * camas}

method cargaMaxima() {return 1200}

method pesoMaximo() {return 4000 + self.capacidadPasajeros()*80 + self.cargaMaxima()}

method banios() {return 1}

method mantenimiento() {}

}


