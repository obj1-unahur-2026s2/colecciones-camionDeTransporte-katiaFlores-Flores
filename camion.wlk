import cosas.*
object camion {
    const cosas = []

    method capacidadDeCarga() = 1000

    method pesoDeCosas() = cosas.sum({c => c.peso()}) 

    method pesoTotal() = self.pesoDeCosas() + self.capacidadDeCarga()

    method sonCosasPares() = cosas.all({c => c.peso() % 2 == 0})

    method algunaCosaPesa_(peso) = cosas.any({c => c.peso() == peso})

    method controlDePeligrosidad(nivel) = cosas.find({c => c.peligrosidad() == nivel})

    method cosasQueSuperanNivel_dePeligrosidad(nivel) = cosas.filter({c => c.peligrosidad() > nivel})

    method consultarsi_EsPeligrosa(cosa, nivel) = self.cosasQueSuperanNivel_dePeligrosidad(nivel).find({c => c.esPeligrosa()})
    
    method camionExcedeCapacidad() = self.pesoTotal() > 2500

    method puedeCircularEnRuta(nivel) = self.camionExcedeCapacidad() and cosas.all({ c => c.peligrosidad() <= nivel })

    method cosaQuePeseEntre_y_(minimo, maximo) = cosas.any({c => c.peso().between(minimo, maximo)})

    method loMasPesado() = cosas.max({ c => c.peso()})

    method cargar(cosa){
        cosas.add(cosa)
        cosas.sufrirCambios()
    }

    method descargar(cosa) {
        cosas.remove(cosa)
    }



    
}
