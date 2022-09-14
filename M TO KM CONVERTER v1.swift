import SwiftUI

struct ContentView: View {
    @State var km = 0.00
    @State var mile = 0.00
    var body: some View {
        VStack {
            Text("Miles and Kilometres Conversion")
                .font(.title)
                .padding()
        }
        HStack {
            Text ("Kilometres")
                .padding()
            TextField("Quantity 1", value: $km, format: .number)
            Text(String(km*0.62137))
                .textFieldStyle(.roundedBorder)
                .border(.green, width: 4)
                .keyboardType(.decimalPad)
        }
            HStack {
                TextField("Quantity 1", value: $mile, format: .number)
                Text(String(mile*1.60934))
            }
        }
    }
