import Obrero.*

class Gasista inherits Obrero{
	
	override method jornadaLaboral(obra){
		obra.metrosDeCanio(obra.metrosDeCanio() - 3)
		obra.fosforos(obra.fosforos() - 20)
		obra.implementosDeGasColocados(obra.implementosDeGasColocados() + 1)	
	}
	
}
