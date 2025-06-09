//
//  ContentView.swift
//  ProfileCard
//
//  Created by Alissa Xu - 697 on 2025-01-31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let lightYellow = Color("Light Yellow")
        
        VStack {
            Image("pomeranian2")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white,lineWidth: 4))
                .shadow(radius:10)
            Text("Woof!")
                
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                .font(.title)
                .fontWeight(.bold)
                .fontDesign(.serif)
                .foregroundStyle(Color.primary)
                .padding()
            Text("Mr. Pom says hello.")
                .foregroundColor(.brown)
        }
        .padding(.all, 40)
        .background(.white)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(lightYellow,lineWidth: 5))
        .shadow(radius: 15)
    }
}

#Preview {
    ContentView()
}
