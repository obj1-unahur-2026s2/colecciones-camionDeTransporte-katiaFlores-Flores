
object cosas {
    
}

object knightRider {
    method peso() = 500

    method peligrosidad() = 10
}

object bumblebee {
    var peligrosidad = self.auto()
    
    method peso() = 800
    
    method peligrosidad() = peligrosidad
    
    method auto() = 15

    method robot() = 30


    method transformarEn_(algo){
        esPeligrosa = algo

    }


}

object paqueteDeLadrillos {

    var peso = 2
    method peso()= peso

    method peligrosidad() = 2

    method cambiarPeso_(nuevoPeso){
        peso = nuevoPeso * 2
    }

}

object arenaAGranel {
    var peso = 10
    method peso() = peso

    method peligrosidad() = 1

    method cambiarPeso_(nuevoPeso){
        peso = nuevoPeso
    }
}


object bateriaAntiaerea {
    var peso = self.misiles()

    method peso() = peso

    method peligrosidad() = if (peso == self.misiles()) 100 else 0

    method misiles() = 300
    method otraCaso() = 200

    method cambiarPeso_(nuevoPeso){
        peso = nuevoPeso
    }

}

object contenedorPortuario {

    const contenedor = []
    method peso() = 100 + contenedor.sum({c => c.peso()})

    method peligrosidad() = if (contenedor) contenedor.sum({c => c.esPeligrosa()}) else 0
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
}

object embalajeDeSeguridad {
    var envuelto = arenaAGranel.peso()
    method peso()  = envuelto

    method peligrosidad() = envuelto.peligrosidad() / 2

    method envolver_(algo){
        envuelto = algo.peso()
    }
}
