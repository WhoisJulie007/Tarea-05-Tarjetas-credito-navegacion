//
//  tarjeta.swift
//  ExamenPrimerParcial20291
//
//  Created by WIN603 on 15/09/25.
//

import SwiftUI

struct tarjeta: View {
    let banco : String
    let fotobanco : String
    let numero : String
    let nombre : String
    let logo : String
    let colortarjeta : Color
    @State var altura: CGFloat
    @State var efecto: CGFloat = 0
    @Binding var selectedCard: Int
    var index : Int
    @State var showAlert: Bool =  false

    
    func starFill()-> String{
        var imagen: String
        if index == selectedCard{
            imagen = "star.fill"
        } else{
            imagen = "star"
        }
        return imagen
    }
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(banco)
                    .bold(true)
                Image(fotobanco)
                    .resizable()
                    .frame(width: 50, height: 50)
                Spacer()
                Image("tapClaro")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            .frame(width: 380, height: 60)
            HStack(){
                Text(numero)
                    .font(.system(size: 22, weight: .bold, design: .default))
                Spacer()
            }
            HStack(){
                Text(nombre)
                Spacer()
            }
            .frame(width: 380)
            Spacer()
            HStack{
                Button(action : {
                    selectedCard = index
                    showAlert = true
                    }
                    
                    
                    
                )
                {
                    Image(systemName: starFill())
                }
                .alert("Has seleccionado la tarjeta del banco \(banco) como metodo preferido de pago exitosamente", isPresented: $showAlert) {
                            Button("OK", role: .cancel) { }
                        }
                Spacer()
                if logo == "String"{
                    visa()
                }else{
                    Mastercard()
                }
            }
            
            
        }
        .modifier(tarjetaViewModifier(altura: altura, colortarjeta: colortarjeta, efecto: $efecto))
        
                   
        
}
}

#Preview {
    tarjeta(banco: "Mercado Pago", fotobanco: "mercadopago", numero: "1234 5678 9012", nombre: "Julia Maydeli Castan Pacheco", logo: "String",colortarjeta: Color.blue, altura: 220, selectedCard: .constant(1), index: 1)
}
