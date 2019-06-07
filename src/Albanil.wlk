import Obrero.*

class Albanil inherits Obrero{
	
	override method jornadaLaboral(obra){
		obra.ladrillos(obra.ladrillos() - 100)
		obra.metrosCuadradosConstruidos(obra.metrosCuadradosConstruidos() + 3)
	}
	
	
}
