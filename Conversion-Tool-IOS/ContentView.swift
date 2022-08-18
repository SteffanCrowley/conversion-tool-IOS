//
//  ContentView.swift
//  Conversion-Tool-IOS
//
//  Created by steffan crowley on 8/18/22.
//

import SwiftUI

struct ContentView: View {
    @State private var inchesAmount = 0
    @FocusState private var amountIsFocused: Bool
    
    var totalOutput: Double {
    let centimetersAmount = Double (inchesAmount * 3)
        return centimetersAmount
    }
    
    var body: some View {
        NavigationView{
            Form{
                Section {
                    TextField("Amount", value: $inchesAmount, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                }
                Section {
                    Text(totalOutput, format: .number)
                }
            }
            .navigationTitle("Unit Converter")
            .toolbar {
              ToolbarItemGroup(placement: .keyboard) {
               Button("Done") {
               amountIsFocused = false
               }
             }
           }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
