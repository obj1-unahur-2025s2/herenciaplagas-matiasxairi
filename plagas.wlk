class Plaga{
    var property poblacion 
    method transmiteEnfermedades() {
      return poblacion >= 10
    }  
}
class Cucaracha inherits Plaga{
    const property pesoPromedio
    method nivelDaño() {
      return poblacion/2 
    }
    override method transmiteEnfermedades() {
      return pesoPromedio >= 10 && super()
    }  
}

class Pulga inherits Plaga{
    method nivelDaño() {
      return poblacion * 2
    }  
}

class Garrapata inherits Pulga{
    
}
class Mosquito inherits Plaga{
    
    method nivelDaño() {
      return poblacion 
    }  
    override method transmiteEnfermedades() {
        return poblacion % 3 == 0 && super()
    }
}