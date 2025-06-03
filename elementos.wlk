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
    // valor que tiene cada huerta 
    // cada huerta tendra un valor de produccion diferente
    method esBueno() = produccion > nivelMinimoProduccion.valor()
    // lo tengo que comparar con un nivel fijp que tendran
    // todas las huertas y el mismo NO se lo puedo poner en una clase
    // porque las huertas tendran la produccion distinta osea el valor
}
object nivelMinimoProduccion {
    // en este caso dice que es un valor fijo pero no dice
    // cuanto vale exactamente entonces le hacemos una variable
    // para que el valor se pueda cambiar
    var property valor = 100
    // como es un objeto no lo puedo dejar
    // sin un valor, en las clases si a diferencia de los objetos 
}

class Mascota {
    var salud
    method esBueno() = salud > 250
}

