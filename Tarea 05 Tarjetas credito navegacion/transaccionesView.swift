//
//  transaccionesView.swift
//  Tarea 05 Tarjetas credito navegacion
//
//  Created by WIN603 on 13/10/25.
//

import SwiftUI

struct transaccionesView: View {
    var tarjetaImprimir: tarjetaModel
    var tra: [transaccionesModel] = []
    var body: some View {
        tarjeta(tarjetaModel:  tarjetaImprimir,  altura: 220, selectedCard: .constant(1))
        Spacer()
        transacciones(transaccion: tra[0])
//        ForEach(tra, id: \.self) { item in
//            transacciones(transaccion: item)
//        }
        
        
        Text("Estas seleccionando la tarjeta: \(tarjetaImprimir.index)")
    }
}

#Preview {
    let x = tarjetaModel(banco: "Mercado Pago", fotobanco: "mercadopago", numero: "1234 5678 9012", nombre: "Julia Maydeli Castan ", logo: "String",colortarjeta: Color.blue, index: 1)
    let x1 = transaccionesModel(cuadrito: Color.black ,icono: "train.side.front.car", texto: "Narita Airport", precio: "1200",destino: "Narita Airport", fecha: "13/10/25")
    transaccionesView(tarjetaImprimir: x, tra: [x1])
}
