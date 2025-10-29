//
//  transacciones.swift
//  Tarea 05 Tarjetas credito navegacion
//
//  Created by WIN603 on 13/10/25.
//

import SwiftUI

struct transacciones: View {
    var transaccion: transaccionesModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {

                   // Icono cuadrado con color de fondo
                   ZStack {
                       RoundedRectangle(cornerRadius: 10, style: .continuous)
                           .fill(transaccion.cuadrito)
                       Image(systemName: transaccion.icono)
                           .foregroundStyle(.white)
                           .font(.system(size: 20, weight: .semibold))
                   }
                   .frame(width: 50, height: 50)

                   // Texto principal a la izquierda
                   VStack(alignment: .leading, spacing: 2) {
                       Text(transaccion.texto)
                           .font(.body)
                           .lineLimit(1)
                           .truncationMode(.tail)

                       Text(transaccion.destino)
                           .font(.caption)
                           .foregroundColor(.gray)
                           .lineLimit(1)

                       Text(transaccion.fecha)
                           .font(.caption)
                           .foregroundColor(.gray)
                   }

                   Spacer()

                   // Precio + chevron alineados a la derecha
                   HStack(spacing: 6) {
                       Text(transaccion.precio)
                           .font(.subheadline)
                           .fontWeight(.semibold)
                           .lineLimit(1)
                       Image(systemName: "chevron.right")   // ¡no resizable!
                           .font(.system(size: 12, weight: .semibold))
                           .foregroundColor(.gray)
                   }
               }
               .padding(.horizontal, 16)
               .padding(.vertical, 10)
               .frame(maxWidth: .infinity, minHeight: 72, alignment: .leading) // sin width fijo
               .background(
                   RoundedRectangle(cornerRadius: 12, style: .continuous)
                       .fill(Color(.systemBackground))
               )
               // .shadow(radius: 3, y: 1) // opcional
               .contentShape(Rectangle()) // para que sea fácil de tocar si luego le pones onTapGesture
           }
}

#Preview {
    let  trans1 = transaccionesModel(cuadrito: Color.black ,icono: "train.side.front.car", texto: "Narita Airport", precio: "1200",destino: "Narita Airport", fecha: "13/10/25")
    transacciones(transaccion: trans1)
}

//#Preview {
//    let x = tarjetaModel(banco: "Mercado Pago", fotobanco: "mercadopago", numero: "1234 5678 9012", nombre: "Julia Maydeli Castan ", logo: "String",colortarjeta: Color.blue, index: 1)
//    tarjeta(tarjetaModel:  x,  altura: 220, selectedCard: .constant(1))
//}

//var cuadrito: Color = .blue
// var icono: String = "train.side.front.car"
// var texto: String = "Narita Airport"
// var precio: String = "$1200"
// var destino: String = "De Tampico a Narita"
// var fecha: String = "13/10/25"
