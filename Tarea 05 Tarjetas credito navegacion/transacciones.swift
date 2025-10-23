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
        VStack{
            HStack{
                ZStack{
                    Image(systemName: transaccion.icono)
                        .foregroundStyle(.white)
                    
                }
                .frame(width: 50, height: 50)
                .background(transaccion.cuadrito)
                .cornerRadius(5)
                VStack(alignment: .leading){
                    HStack{
                        Text(transaccion.texto)
                        Text(transaccion.precio)
                        Image(systemName: "chevron.forward")
                            .resizable()
                            .frame(width: 10, height: 10)
                            .foregroundColor(Color.gray)
                        
                    }
                    
                    Text(transaccion.destino)
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text(transaccion.fecha)
                        .font(.caption)
                        .foregroundColor(.gray)
                }.padding(.trailing)
                VStack{
                    
                }
                
            }
            
        }
        
        
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
