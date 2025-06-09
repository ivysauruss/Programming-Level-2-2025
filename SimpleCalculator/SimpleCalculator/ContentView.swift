//
//  ContentView.swift
//  SimpleCalculator
//
//  Created by Alissa Xu - 697 on 2025-02-18.
//

import SwiftUI

struct ContentView: View {
    // stores the first number
    @State private var number1: Double = 0
    
    // stores the second number
    @State private var number2: Double = 0
    
    // stores the result of the operation
    @State private var result: Double = 0
    
    // define functions that perform calculations on number1 and number2
    // store the answer in the var result
    func calculateSum() {
        result = number1 + number2
    }
    func calculateDifference() {
        result = number1 - number2
    }
    func calculateProduct() {
        result = (number1) * (number2)
    }
    
    func calculateQuotient() {
        result = number1 / number2
    }
    
    
    var body: some View {
        VStack {
            // textfield
            // stores and views var number1
            HStack {
                Text("First number:")
                    .font(.caption)
                    .padding()
                TextField("Enter first number", value: $number1, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .shadow(radius: 10)
            }
            // textfield
            // stores and views var number2
            HStack {
                Text("Second number:")
                    .font(.caption)
                    .padding()
                TextField("Enter second number", value: $number2, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .shadow(radius: 10)
            }
            
            // button
            // calculates the sum
            Button(action: calculateSum) {
                Text("Calculate Sum")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            // button
            //calculates the difference
            Button(action: calculateDifference) {
                Text("Calculate Difference")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            // button
            //calculates the product
            Button(action: calculateProduct) {
                Text("Calculate Product")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            // button
            //calculates the quotient
            Button(action: calculateQuotient) {
                Text("Calculate Quotient")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            // text
            // shows result
            Text("Result: \(result)")
                .font(.title)
                .padding()
        }
            .padding()
        }
    }
    
    #Preview {
        ContentView()
    }

