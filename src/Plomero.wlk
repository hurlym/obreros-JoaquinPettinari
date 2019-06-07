import Obrero.*

class Plomero inherits Obrero{
	
	override method jornadaLaboral(obra){
		obra.metrosDeCanio(obra.metrosDeCanio() - 10)
		obra.arandelas(obra.arandelas() - 30)
		obra.implementosDeAguaColocados(obra.implementosDeAguaColocados() + 0.5)
	}
	
		
	
}
