class Hogar {
  const property nivelMugre
  const property confort
  method esBueno() {
    return confort >= nivelMugre * 2 
  }
}

class Huerta {
const property capacidadDeProduccion 
method esBueno() {
  return capacidadDeProduccion > capacidadEstandar
}  
}
object capacidadEstandar{
  var property valorMinimo = 0
}

class Mascota{
  const property salud 
  method esBueno() {
    return salud > 250
  } 
}


class Barrio {
  const property elementos = #{}
  method agregarElemento(unElemento) {
    elementos.add(unElemento)
}
  method quitarElemento(unElemento) {
    elementos.remove(unElemento)
}
  method esCopado() {
    elementos.count({e => e.esBueno()} > elementos.size() / 2)
  }
}
