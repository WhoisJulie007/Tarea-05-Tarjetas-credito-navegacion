//
//  tarjetas.swift
//  ExamenPrimerParcial20291
//
//  Created by WIN603 on 15/09/25.
//

import SwiftUI

struct tarjetas: View {
    @State var bloquear: Bool = false
    @State var cardSeleccionada: Int = -1
    
    //Hola soy ester
    
    var body: some View {
        NavigationStack {
            ScrollView(){
                
                VStack(spacing: 0){
                }
                Text("Tarjetas de credito")
                    .font(.largeTitle)
                HStack{
                    Spacer()
                    Toggle(
                        "Bloquear Tarjetas",
                        systemImage: "lock.fill",
                        isOn: $bloquear
                    )
                    .frame(width: 220, height: 50)
                }
                .padding(.trailing, 20)
                
                
                if bloquear{
                    GroupBox {
                        Text("Tarjertas congeladas")
                            .font(.headline)
                    }
                }
                
                let x = tarjetaModel(banco: "Mercado Pago", fotobanco: "mercadopago", numero: "1234 5678 9012", nombre: "Julia Maydeli Castan ", logo: "String",colortarjeta: Color.blue, index: 1)
                
                NavigationLink(destination: transaccionesView(tarjetaImprimir: x)){
                    
                    tarjeta(tarjetaModel:  x,  altura: 220, selectedCard: .constant(1))
                    
                }
                
                
//                tarjeta(banco: "Nu", fotobanco: "nu", numero: "1234 5678 9013", nombre: "Julia Maydeli Castan Pacheco", logo: "String",colortarjeta: Color.purple, altura: 220, selectedCard: $cardSeleccionada, index: 3)
//                tarjeta(banco: "Hey Banco", fotobanco: "heybanco", numero: "1234 5678 9014", nombre: "Julia Maydeli Castan Pacheco", logo: "String",colortarjeta: Color.black, altura: 220, selectedCard: $cardSeleccionada, index: 4)
//                tarjeta(banco: "Stori", fotobanco: "stori", numero: "1234 5678 9015", nombre: "Julia Maydeli Castan Pacheco", logo: "String",colortarjeta: Color.green, altura: 220, selectedCard: $cardSeleccionada, index: 5)
//                tarjeta(banco: "Banamex", fotobanco: "banamex", numero: "1234 5678 9016", nombre: "Julia Maydeli Castan Pacheco", logo: "String",colortarjeta: Color.red, altura: 220, selectedCard: $cardSeleccionada, index: 6)
                
            }}
        
    }
}

#Preview {
    tarjetas()
}
