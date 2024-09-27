object luke {
  const property lugaresVisitados = []
  const property recuerdos = []
  var combustible = 100
  method viajar(pais) {
    lugaresVisitados.add(pais)
    recuerdos.add(pais.recuerdo())
    combustible -= 20
  }
  method combustible() = combustible
  var property esRapido = true 
}

object paris {
    method puedeViajar() {
        return luke.combustible() >= 50
    }
    method recuerdo() = llaveroTorre
}

object buenosAires {
    method puedeViajar() {
        return luke.esRapido()
    }
    method recuerdo() = mate
}

object bagdad {
    method puedeViajar() {}
    var recuerdo = petroleo
    method recuerdo(anio) {
        if (anio >= 2005) {
            recuerdo = petroleo
        }
        else if (anio.between(1950, 2004)) {
            recuerdo = armas
        }
        else if (anio.between(1000, 1949)) {
            recuerdo = replicaBabilonia
        }
    }
    method recuerdo() = recuerdo
}

object lasVegas {
    method puedeViajar() {
        return paisHomenaje.puedeViajar()
    }
    var property paisHomenaje = buenosAires
    method recuerdo() {
        return paisHomenaje.recuerdo()
    }

}

object petroleo {}

object armas {}

object replicaBabilonia {}

object llaveroTorre {}

object mate {
    var tieneYerba = false
    method tieneYerba(presidente) {
       if (presidente == "peron" or presidente == "nestor") {
        tieneYerba = true
       }
    }
    method tieneYerba() = tieneYerba
}