//
//  ContentView.swift
//  CustomUIButtonExample
//
//  Created by Alissa Xu - 697 on 2025-04-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GradientButton(
                title: "Tap Me",
                gradientColors: [Color.pink, Color.purple]
            ) {
                print("Button tapped!")
            }
            
            GradientButton(title: "Learn More",
                           gradientColors: [Color.blue, Color.red])
            {
                print("Learn More button tapped!")
            }
            .padding()
            ProfileCard(name: "Alissa Xu", bio: "Senior at SLSS 🎓", image: "pomeranian2")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
