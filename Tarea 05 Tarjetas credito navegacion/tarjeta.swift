//
//  tarjeta.swift
//  ExamenPrimerParcial20291
//
//  Created by WIN603 on 15/09/25.
//

import SwiftUI

struct tarjeta: View {
    let tarjetaModel: tarjetaModel
    @State var altura: CGFloat
    @State var efecto: CGFloat = 0
    @Binding var selectedCard: Int
    @State var showAlert: Bool =  false

    
    func starFill()-> String{
        var imagen: String
        if tarjetaModel.index == selectedCard{
            imagen = "star.fill"
        } else{
            imagen = "star"
        }
        return imagen
    }
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(tarjetaModel.banco)
                    .bold(true)
                Image(tarjetaModel.fotobanco)
                    .resizable()
                    .frame(width: 50, height: 50)
                Spacer()
                Image("tapClaro")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            .frame(width: 380, height: 60)
            HStack(){
                Text(tarjetaModel.numero)
                    .font(.system(size: 22, weight: .bold, design: .default))
                Spacer()
            }
            HStack(){
                Text(tarjetaModel.nombre)
                Spacer()
            }
            .frame(width: 380)
            Spacer()
            HStack{
                Button(action : {
                    selectedCard = tarjetaModel.index
                    showAlert = true
                    }
                    
                    
                    
                )
                {
                    Image(systemName: starFill())
                }
                .alert("Has seleccionado la tarjeta del banco \(tarjetaModel.banco) como metodo preferido de pago exitosamente", isPresented: $showAlert) {
                            Button("OK", role: .cancel) { }
                        }
                Spacer()
                if tarjetaModel.logo == "String"{
                    visa()
                }else{
                    Mastercard()
                }
            }
            
            
        }
        .modifier(tarjetaViewModifier(altura: altura, colortarjeta: tarjetaModel.colortarjeta, efecto: $efecto))
        
                   
        
}
}

#Preview {
    let x = tarjetaModel(banco: "Mercado Pago", fotobanco: "mercadopago", numero: "1234 5678 9012", nombre: "Julia Maydeli Castan ", logo: "String",colortarjeta: Color.blue, index: 1)
    tarjeta(tarjetaModel:  x,  altura: 220, selectedCard: .constant(1))
}
