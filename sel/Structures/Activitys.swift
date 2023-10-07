//
//  Activitys.swift
//  sel
//
//  Created by José Andrés Rodríguez Ruiz on 07/10/23.
//

import Foundation
import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        Text("1. Haz una lluvia de ideas sobre problemas sociales o ambientales que se dan en tu entorno.")
//    }
//}

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("1.     Haz una lluvia de ideas sobre problemas sociales o ambientales que se dan en tu entorno.").fontWeight(.bold)
        List {
            Text("¿Cuáles identificas?")
            Text("Mínimo deben poder identificar 5 problemáticas.")
            Text("¿Cómo te afectan estos problemas? ¿Has escuchado que le afecten a alguien cercano?")
            Text("¿Por qué se consideran un problema?")
        }
        Text("2.     Ahora, entrevista a una persona respecto a la misma idea:").fontWeight(.bold)
        List{
            Text("¿Qué problemas ambientales o sociales identificas en tu casa, colonia o ciudad o país?")
            Text("¿Por qué son un problema?")
            Text("¿Quiénes intervienen en el problema?")
            Text("¿Te has visto afectado por este problema? ¿Cómo?")
        }
        Text("3.     Por último, has un recorrido por tu colonia o ciudad y registra lo que ves relacionado con la situación ambiental o social. Busca identificar situaciones que no te agraden o problemas ya identificados.").fontWeight(.bold)
        List{
            Text("¿Que viste?")
            Text("¿Dónde lo viste?")
            Text("¿Había alguien ocasionándolo o atendiéndolo?")
        }
        Text("¿Qué debes entregar?").fontWeight(.bold)
        List{
            Text("Conclusión de la reflexión inicial")
            Text("Conclusión de la entrevista")
            Text("Tabla con el registro de lo observado")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



