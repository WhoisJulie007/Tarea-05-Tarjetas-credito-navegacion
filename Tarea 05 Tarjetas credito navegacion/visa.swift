//
//  visa.swift
//  ExamenPrimerParcial20291
//
//  Created by WIN603 on 15/09/25.
//

import SwiftUI

struct visa: View {
    var body: some View {
        VStack{
            ZStack {
                Circle()
                    .fill(Color.blue)
                    .stroke(Color.white,lineWidth: 1)
                    .frame(width: 20, height: 20)
                    .offset(x: -3)
                Circle()
                    .fill(Color.orange)
                    .stroke(Color.white,lineWidth: 1)
                    .frame(width: 20, height: 20)
                    .offset(x: 3)
                
            }
            Text("Mastercard")
                .font(.system(size: 13))
                .foregroundColor(.white)
        }
        .frame(width: 100, height: 40)

        
    }
}

#Preview {
    visa()
}
