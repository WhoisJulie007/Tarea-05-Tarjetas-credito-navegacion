//
//  tarjetaViewModifier.swift
//  Actividad 4 Bindings tarjeta
//
//  Created by WIN603 on 03/10/25.
//

import SwiftUI

struct tarjetaViewModifier: ViewModifier {
    @State var altura: CGFloat
    let colortarjeta : Color
    @Binding var efecto: CGFloat 

    func body(content: Content) -> some View {
        content
            .padding(.leading)
            .foregroundColor(Color.white)
            .frame(width: 390, height: altura)
            .background(colortarjeta)
            .cornerRadius(20)
            .rotation3DEffect(.degrees(efecto), axis: (x: 0, y: 1, z: 0))
    }
}
