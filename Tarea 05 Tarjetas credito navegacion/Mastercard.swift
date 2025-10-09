//
//  Mastercard.swift
//  ExamenPrimerParcial20291
//
//  Created by WIN603 on 15/09/25.
//

import SwiftUI

struct Mastercard: View {
    var body: some View {
        VStack{
            ZStack {
                Circle()
                    .fill(Color.black)
                    .frame(width: 25, height: 25)
                Text("VISA")
                    .foregroundColor(.white)
                    .bold(true)
                    .font(.system(size: 8))
            }
            
        }
        .frame(width: 100, height: 100)
    }
}

#Preview {
    Mastercard()
}
