class Obra {
	var property ladrillos = 0
	var property metrosDeCanio = 0
	var property metrosDeCable = 0
	var property cinta = 0
	var property fosforos = 0
	var property arandelas = 0
	var property efectivo = 0
	var property metrosCuadradosConstruidos = 0
	var property implementosDeAguaColocados = 0
	var property implementosDeGasColocados = 0
	var property cablesElectricosColocados = 0
	
	const obreros = #{}

	method contratarObrero(quien){ obreros.add(quien) }
	
	method despedirObrero(quien) { 
		if(quien.estaDeLicencia()){
			self.error("Las leyes laborales están para respetarse - licencia implica estabilidad laboral")
		}
		obreros.remove(quien)
	}
	
	method obrerosDisponibles(){ return obreros.filter{obrero => not obrero.estaDeLicencia() }}
	
	method plantillaObreros() = obreros
	
	method jornadaLaboral(){
		if(self.obrerosDisponibles().size() == 0 ){
			self.error("No hay obreros disponibles para trabajar")
		}
		self.obrerosDisponibles().forEach{ obrero => obrero.jornadaLaboral(self) }
		
	}
	method mandarDeLicencia(quien){ quien.irDeLicencia() }
	method vuelveDeLicencia(quien){ quien.volverDeLicencia()}
	
	method agregarLadrillos(cuantos){ ladrillos += cuantos }
	method agregarMetrosDeCanio(cuantos){ metrosDeCanio += cuantos }
	method agregarMetrosDeCable(cuantos){metrosDeCable += cuantos}
	method agregarCinta(cuantos){cinta += cuantos}
	method agregarFosforos(cuantos){fosforos += cuantos}
	method agregarArandelas(cuantos){arandelas += cuantos}
	
	method estaEsteObrero(quien) {return obreros.contains(quien)}
	
	method sePuedeFinalizar(){
		 return self.metrosPorHabitacion() && self.implementosDeAgua() && self.implementosDeGas()
	}
	
	method implementosDeAgua(){
		return implementosDeAguaColocados  >= (10 * self.banios())
	}
	
	method metrosPorHabitacion(){
		return (metrosCuadradosConstruidos) >= (50 * self.habitaciones())
	}
	
	method implementosDeGas(){
		return implementosDeGasColocados >= self.banios() + 3 * self.habitaciones() 
	}
	
	method colocarMetros(){
		return (metrosCuadradosConstruidos + cablesElectricosColocados >= (50 * self.habitaciones() + 100 * self.pisos()))
	}
	
	method habitaciones()
	method pisos()
	method banios() 
}



class Casa inherits Obra {
	var property habitaciones = 3
	var property banios = 1
	
	override method habitaciones() = habitaciones
	override method banios() = banios
	
	override method pisos() = 1
	
	
	
	
}

class Edificio inherits Obra {
	var property pisos = 4
	override method pisos() = pisos
}

