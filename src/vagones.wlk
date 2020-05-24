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

method pesoMaximo() {
	if(banio) {return 2000 + self.capacidadPasajeros()*80 + 300}
	else {return 2000 + self.capacidadPasajeros()*80 + 800}
}


}

class VagonCarga {

var cargaIdeal
var maderas

method cargaIdeal(cantidad) {cargaIdeal = cantidad}
method maderasSueltas(cantidad) {maderas = cantidad}

method pesoMaximo() {return 1500 + cargaIdeal - maderas*400 }

}

class VagonDormitorio {

var compartimientos
var camas

method cargarCompartimientos(cantidad) {compartimientos = cantidad}
method cargarCamas (cantidad) {camas = cantidad}

method pasajerosMaxima() {return compartimientos * camas}

method pesoMaximo() {return 4000 + self.pasajerosMaxima()*80 + 1200}

}


