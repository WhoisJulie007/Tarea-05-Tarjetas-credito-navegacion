//
//  tarjetaModel.swift
//  Tarea 05 Tarjetas credito navegacion
//
//  Created by WIN603 on 22/10/25.
//

import Foundation
import SwiftUI

public struct tarjetaModel {
    let banco : String
    let fotobanco : String
    let numero : String
    let nombre : String
    let logo : String
    let colortarjeta : Color
    var index : Int
    var transacciones : [transaccionesModel] = []
}

public struct transaccionesModel {
    var cuadrito: Color = .blue
     var icono: String = "train.side.front.car"
     var texto: String = "Narita Airport"
     var precio: String = "$1200"
     var destino: String = "De Tampico a Narita"
     var fecha: String = "13/10/25"
}
