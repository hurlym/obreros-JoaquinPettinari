import Obrero.*

class Electricista inherits Obrero{
	
	override method jornadaLaboral(obra){
		obra.metrosDeCable(obra.metrosDeCable() - 4)
		obra.cinta(obra.cinta() - 1)
		obra.cablesElectricosColocados(obra.cablesElectricosColocados() + 4)
		
	}
	
}
