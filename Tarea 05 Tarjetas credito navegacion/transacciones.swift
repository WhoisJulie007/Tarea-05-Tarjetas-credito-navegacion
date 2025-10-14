//
//  transacciones.swift
//  Tarea 05 Tarjetas credito navegacion
//
//  Created by WIN603 on 13/10/25.
//

import SwiftUI

struct transacciones: View {
    @State var cuadrito: Color = .blue
    @State var icono: String = "train.side.front.car"
    @State var texto: String = "Narita Airport"
    @State var precio: String = "$1200"
    @State var destino: String = "De Tampico a Narita"
    @State var fecha: String = "13/10/25"
    
    var body: some View {
        VStack{
            HStack{
                ZStack{
                    Image(systemName: icono)
                        .foregroundStyle(.white)
                    
                }
                .frame(width: 50, height: 50)
                .background(cuadrito)
                .cornerRadius(5)
                VStack(alignment: .leading){
                    HStack{
                        Text(texto)
                        Text(precio)
                        Image(systemName: "chevron.forward")
                            .resizable()
                            .frame(width: 10, height: 10)
                            .foregroundColor(Color.gray)
                        
                    }
                    
                    Text(destino)
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text(fecha)
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
    transacciones(cuadrito: .blue, icono: "train.side.front.car", texto: "Narita Airport", precio: "$2000", destino: "De Tampico a Narita", fecha: "13/10/25")
}
