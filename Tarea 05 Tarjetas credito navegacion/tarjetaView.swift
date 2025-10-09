//
//  tarjetaView.swift
//  Actividad 4 Bindings tarjeta
//
//  Created by win603 on 26/09/25.
//

import SwiftUI

struct tarjetaView: View {
    var colorTarjeta: Color
    var banco: String
    var imagenBanco: String
    var numeroTarjeta: String
    
    var body: some View {
        ZStack{
           colorTarjeta
            VStack (spacing: 30){
                HStack{
                    Text(banco).foregroundColor(.white).padding(.leading, 20)
                        .font(.system(size: 25))//variable
                    Image(imagenBanco) //var
                        .resizable()
                        .scaledToFill()
                        .frame(width: 35, height: 35)
                    Spacer()
                    
                    Image("contactless2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                }.padding(.top, 10)
                

                VStack{
                    HStack{
                        Text(numeroTarjeta) //var
                            .font(.system(size: 20))
                            .foregroundColor(.white).padding(.leading, 20)
                            .padding(.top, 8)
                        Spacer()
                    }
                    
                    HStack{
                        Text("Eunice Ester Chávez Compeán") //var
                            .font(.system(size: 15))
                            .foregroundColor(.white).padding(.leading, 20)
                            .padding(2)
                            .lineLimit(1)
                        Spacer()
                        
                        Button(action:{
                            
                        } ){
                            Image(systemName: "star")
                                .foregroundStyle(.white)
                        }
                        
                    }
                }
                
            }.padding(15)
            
            
            
        }.frame(width: 380, height: 200)
            .cornerRadius(20)
    }
}

#Preview {
    tarjetaView(colorTarjeta: .blue, banco: "Mercado Pago", imagenBanco: "mercadopago" , numeroTarjeta: "1223456789012345")
}
