//
//  ContentView.swift
//  WeatherReportApp
//
//  Created by Alissa Xu - 697 on 2025-02-26.
//

import SwiftUI

struct ContentView: View {
    @State private var temperature: String = "20"
    @State private var weatherMessage: String = ""
    var body: some View {
        VStack {
            //TextField for temperature
            
            TextField("Enter temperature in Celsius", text: $temperature)
                .padding()
                .keyboardType(.numberPad)
                .textFieldStyle(.roundedBorder)
                .shadow(radius:10)
            
            // Button to check the weather
            
            Button(action: {
                if Int(temperature)! < 0 {
                    weatherMessage = "It's freezing!"
                }
                else if Int(temperature)! < 15 {
                    weatherMessage = "It's cold."
                }
                else if Int(temperature)! <= 25 {
                    weatherMessage = "It's warm."
                }
                else if Int(temperature)! <= 40 {
                    weatherMessage = "It's hot!"
                }
                else {
                    weatherMessage = "It's burning!!!"
                }
            }) {
                Text("Check Weather")
                    .font(.title)
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            // Text to display the weather message
            Text(weatherMessage)
                .font(.title2)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
