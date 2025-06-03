// elementos que pueden ser atacados
class Hogar{
    // clase porque puede haber varias
    var mugre
    var confort
    // >  <
    method esBueno() = confort  >= mugre /2
}
class Huerta {
    var produccion 
    method esBueno() = produccion > nivelMinimoProduccion.valor()
}
object nivelMinimoProduccion {
    var property valor = 100
    // como es un objeto no lo puedo dejar
    // sin un valor, en las clases si a diferencia de los objetos 
}
