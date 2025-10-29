import SwiftUI

struct tarjetas: View {
    @State private var bloquear: Bool = false
    @State private var cardSeleccionada: Int = -1

    // MARK: - DATA (cada tarjeta con sus transacciones)
    private var tarjetasData: [tarjetaModel] {
        let t1: [transaccionesModel] = [
            .init(cuadrito: .black,  icono: "tram.fill",          texto: "Metro CDMX",  precio: "$18.00",   destino: "Línea 3",  fecha: "13/10/25"),
            .init(cuadrito: .green,  icono: "cart.fill",          texto: "Super",       precio: "$450.90",  destino: "Fresko",   fecha: "14/10/25"),
            .init(cuadrito: .orange, icono: "fork.knife",         texto: "Restaurante", precio: "$230.00",  destino: "Tacos",    fecha: "15/10/25"),
            .init(cuadrito: .purple, icono: "fuelpump.fill",      texto: "Gasolina",    precio: "$900.00",  destino: "Shell",    fecha: "16/10/25"),
            .init(cuadrito: .blue,   icono: "airplane",           texto: "Vuelo",       precio: "$3,200.00",destino: "MEX–TAM",  fecha: "17/10/25")
        ]
        let t2: [transaccionesModel] = [
            .init(cuadrito: .indigo, icono: "creditcard.fill",    texto: "Pago Spotify",precio: "$115.00",  destino: "Premium",  fecha: "12/10/25"),
            .init(cuadrito: .teal,   icono: "bag.fill",           texto: "Ropa",        precio: "$799.00",  destino: "H&M",      fecha: "13/10/25")
        ]
        let t3: [transaccionesModel] = [
            .init(cuadrito: .mint,   icono: "bolt.fill",          texto: "Luz",         precio: "$520.00",  destino: "CFE",      fecha: "10/10/25"),
            .init(cuadrito: .yellow, icono: "phone.fill",         texto: "Plan móvil",  precio: "$299.00",  destino: "AT&T",     fecha: "11/10/25")
        ]
        let t4: [transaccionesModel] = [
            .init(cuadrito: .pink,   icono: "fork.knife",         texto: "Café",        precio: "$89.00",   destino: "Starbucks",fecha: "15/10/25")
        ]
        let t5: [transaccionesModel] = [
            .init(cuadrito: .gray,   icono: "bus.fill",           texto: "Camión",      precio: "$25.00",   destino: "Ruta 70",  fecha: "18/10/25")
        ]

        return [
            .init(banco: "Mercado Pago", fotobanco: "mercadopago", numero: "1234 5678 9012", nombre: "Julia Maydeli Castan", logo: "String", colortarjeta: .blue,   index: 1, transacciones: t1),
            .init(banco: "Nu",            fotobanco: "nu",          numero: "1234 5678 9013", nombre: "Julia Maydeli Castan", logo: "String", colortarjeta: .purple, index: 2, transacciones: t2),
            .init(banco: "Hey Banco",     fotobanco: "heybanco",    numero: "1234 5678 9014", nombre: "Julia Maydeli Castan", logo: "String", colortarjeta: .black,  index: 3, transacciones: t3),
            .init(banco: "Stori",         fotobanco: "stori",       numero: "1234 5678 9015", nombre: "Julia Maydeli Castan", logo: "String", colortarjeta: .green,  index: 4, transacciones: t4),
            .init(banco: "Banamex",       fotobanco: "banamex",     numero: "1234 5678 9016", nombre: "Julia Maydeli Castan", logo: "String", colortarjeta: .red,    index: 5, transacciones: t5),
        ]
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Tarjetas de crédito")
                        .font(.largeTitle)
                        .padding(.horizontal, 16)

                    HStack {
                        Spacer()
                        Toggle("Bloquear Tarjetas", systemImage: "lock.fill", isOn: $bloquear)
                            .frame(width: 220, height: 44)
                            .padding(.trailing, 16)
                    }

                    if bloquear {
                        GroupBox {
                            Text("Tarjetas congeladas")
                                .font(.headline)
                        }
                        .padding(.horizontal, 16)
                    }

                    // LISTA DE TARJETAS
                    ForEach(Array(tarjetasData.enumerated()), id: \.offset) { _, card in
                        NavigationLink {
                            // Navega pasando la tarjeta con SUS transacciones
                            transaccionesView(tarjetaImprimir: card)
                        } label: {
                            tarjeta(tarjetaModel: card,
                                    altura: 220,
                                    selectedCard: $cardSeleccionada)
                                .padding(.horizontal, 16)
                                .opacity(bloquear ? 0.5 : 1.0)
                        }
                        .disabled(bloquear) // si está bloqueado, no navega
                    }

                    Spacer(minLength: 12)
                }
                .padding(.top, 8)
            }
        }
    }
}

#Preview {
    tarjetas()
}
