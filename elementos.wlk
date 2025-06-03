// elementos que pueden ser atacados
import plagas.*
class Hogar{
    // clase porque puede haber varias
    var mugre
    var confort
    // >  <
    method esBueno() = confort  >= mugre /2
    method recibirDañoPlaga(unaPlaga){
        mugre += unaPlaga.daño()
    }
}
class Huerta {
    var produccion 
    // valor que tiene cada huerta 
    // cada huerta tendra un valor de produccion diferente
    method esBueno() = produccion > nivelMinimoProduccion.valor()
    // lo tengo que comparar con un nivel fijp que tendran
    // todas las huertas y el mismo NO se lo puedo poner en una clase
    // porque las huertas tendran la produccion distinta osea el valor
    method recibirDañoPlaga(unaPlaga){
        produccion = produccion - (unaPlaga.daño() * 0.1) + 
        if(unaPlaga.trasmiteEnfermedades()) 10 else 0
        // solo le sumamos diez si es que la plaga tiene enfermedades
        // en este caso
    }
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
    method recibirDañoPlaga(unaPlaga){
        if(unaPlaga.trasmiteEnfermedades()) {salud = salud - unaPlaga.daño()} 
    }
}
class Barrio {
    const elementos = [] // dice que tiene elementos varios
    // porque dice de 1 elemento
    method saberSiEsBueno(unElemento) = unElemento.esBueno() 
    method esCopado() = self.cantEleementosBuenos() > self.cantElementosMalos()
    // postergo los metodos auxiliares porque no se todavia cuando los elementos
    // son buenos o no
    method cantEleementosBuenos() = elementos.count({e => e.esBueno()})
    method cantElementosMalos() = elementos.count({e => !e.esBueno()}) // lo mismo pero negado    
}
