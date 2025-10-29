

import SwiftUI

struct saldoView: View {
    
    @State var saldo: Double
    @State private var showingSheet = false
    
    var body: some View {
        ZStack() {
            
            RoundedRectangle(cornerRadius: 15)
            
            HStack {
                   
                VStack (alignment: .leading) {
                    
                    Text("Saldo:").foregroundStyle(.white)
                    Text(String(format: "$%.2f", saldo)).foregroundStyle(.white).fontWeight(.bold).font(.title)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                Button(action: {
                    showingSheet.toggle()
                }) {
                    Text("Añadir saldo")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .sheet(isPresented: $showingSheet) {
                    SheetView(saldo: $saldo)
                }
                
            }
            
        }
        .padding()
        .frame(height: 120)
    }
    
}

#Preview {
    saldoView(saldo: 0.99)
}
