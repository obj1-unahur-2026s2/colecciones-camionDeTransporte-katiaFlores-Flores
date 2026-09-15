
object cosas {
    
}

object knightRider {
    method peso() = 500

    method peligrosidad() = 10

    method sufrirCambios(){

    }
}

object bumblebee {
    var peligrosidad = self.auto()
    
    method peso() = 800
    
    method peligrosidad() = peligrosidad
    
    method auto() = 15

    method robot() = 30


    method transformarEn_(algo){
        peligrosidad = algo

    }

    method sufrirCambios(){
        self.transformarEn_(self.robot())
    }

}

object paqueteDeLadrillos {

    var peso = 2
    method peso()= peso

    method peligrosidad() = 2

    method cambiarPeso_(nuevoPeso){
        peso = nuevoPeso * 2
    }

    method sufrirCambios(){
        peso = peso + 12
    }

}

object arenaAGranel {
    var peso = 30
    method peso() = peso

    method peligrosidad() = 1

    method cambiarPeso_(nuevoPeso){
        peso = nuevoPeso
    }

    method sufrirCambios(){
        peso -=  10
    }
}


object bateriaAntiaerea {
    var peso = self.otraCaso()

    method peso() = peso

    method peligrosidad() = if (peso == self.misiles()) 100 else 0

    method misiles() = 300
    method otraCaso() = 200

    method cargar_(nuevoPeso){
        peso = nuevoPeso
    }

    method sufrirCambios(){
        self.cargar_(self.misiles())
    }

}

object contenedorPortuario {

    const contenedor = []
    method peso() = 100 + contenedor.sum({c => c.peso()})

    method peligrosidad() = if (contenedor) contenedor.sum({c => c.esPeligrosa()}) else 0

    method sufrirCambios(){
        //???
    }
}

object residuosRadiactivos {
    var peso = 100
    var peligrosidad = 100
    method peso() = peso

    method peligrosidad() = peligrosidad

    method cambiarPeso_(nuevoPeso){
        peso = nuevoPeso
    }

    method cambiarPeligrosidad_(nuevoNivel){
        peligrosidad = nuevoNivel
    }

    method sufrirCambios(){
        peso = peso + 15
    }
}

object embalajeDeSeguridad {
    var envuelto = arenaAGranel.peso()
    method peso()  = envuelto

    method peligrosidad() = envuelto.peligrosidad() / 2

    method envolver_(algo){
        envuelto = algo.peso()
    }

    method sufrirCambios(){
        
    }

}
