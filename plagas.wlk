class Plaga{
    var poblacion
    method trasmiteEnfermedades() = poblacion >= 10
}
// aca le digo vas a heredad de la clase plaga todos sus atributos
class Cucarachas inherits Plaga{
    // si sigue en amarillo entonces dsp la convertimos en constante
    // para que herede de plaga utilizamos la palaga
    var pesoPromedioBicho
    method nivelDeDaño() = poblacion * 0.5
    override method trasmiteEnfermedades() =  super() && pesoPromedioBicho >= 10
    // override = lo estamos subescribiendo
}
class Pulgas inherits Plaga{
    method nivelDeDaño() = poblacion * 0.2
}
class Garrapatas inherits Pulgas{
    // porque dice que tiene los mismos atributos que pulgas
    // entonces le digo que hereda de pulgas y a su vez pulgas hereda de plagas
}
class Mosquitos inherits Plaga{
    method daño() = poblacion
    override method trasmiteEnfermedades() = super() && poblacion % 3 == 0
    // override para subscribir el metodo
    // super() = hace referencia al metodo que se llama igual en la clase de Herencia
}

