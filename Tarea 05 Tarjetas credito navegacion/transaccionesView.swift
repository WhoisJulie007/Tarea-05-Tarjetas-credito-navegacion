import SwiftUI

struct transaccionesView: View {
    var tarjetaImprimir: tarjetaModel
    var tra: [transaccionesModel] = []
    
    
    static func generarSaldoAleatorio() -> Double {
            Double.random(in: 100...10_000)
        }

    let saldoTarjeta = transaccionesView.generarSaldoAleatorio()
    
    private var source: [transaccionesModel] {
        tra.isEmpty ? tarjetaImprimir.transacciones : tra
    }
    
    // Solo mostramos 5
    private var firstFive: [transaccionesModel] {
        Array(source.prefix(5))
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            tarjeta(tarjetaModel: tarjetaImprimir,
                    altura: 220,
                    selectedCard: .constant(1))
            saldoView(saldo: saldoTarjeta)
            
            if firstFive.isEmpty {
                Text("Sin transacciones para mostrar.")
                    .font(.callout)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
            } else {
                ScrollView {
                    VStack(spacing: 12) {
                        ForEach(Array(firstFive.enumerated()), id: \.offset) { _, transaccion in
                            transacciones(transaccion: transaccion)
                                .padding(.horizontal)
                        }
                    }
                    .padding(.vertical, 4)
                }
            }
            
            Text("Estas seleccionando la tarjeta: \(tarjetaImprimir.index)")
                .font(.footnote)
                .foregroundColor(.secondary)
                .padding(.horizontal)
        }
    }
}

#Preview {
    let tarjetaDemo = tarjetaModel(
        banco: "Mercado Pago",
        fotobanco: "mercadopago",
        numero: "1234 5678 9012",
        nombre: "Julia Maydeli Castan",
        logo: "String",
        colortarjeta: .blue,
        index: 1
    )
    
    let t1 = transaccionesModel(cuadrito: .black, icono: "tram.fill", texto: "Metro CDMX",  precio: "$18.00", destino: "Línea 3", fecha: "13/10/25")
    let t2 = transaccionesModel(cuadrito: .green, icono: "cart.fill", texto: "Super",       precio: "$450.90", destino: "Fresko",   fecha: "14/10/25")
    let t3 = transaccionesModel(cuadrito: .orange, icono: "fork.knife", texto: "Restaurante", precio: "$230.00", destino: "Tacos",   fecha: "15/10/25")
    let t4 = transaccionesModel(cuadrito: .purple, icono: "fuelpump.fill", texto: "Gasolina",  precio: "$900.00", destino: "Shell",   fecha: "16/10/25")
    let t5 = transaccionesModel(cuadrito: .blue, icono: "airplane", texto: "Vuelo",           precio: "$3,200.00", destino: "MEX-TAM", fecha: "17/10/25")
    let t6 = transaccionesModel(cuadrito: .gray, icono: "bus.fill", texto: "Transporte",      precio: "$25.00", destino: "Ruta 70",   fecha: "18/10/25")

    return transaccionesView(tarjetaImprimir: tarjetaDemo, tra: [t1, t2, t3, t4, t5, t6])
}
