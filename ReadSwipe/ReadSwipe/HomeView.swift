//
//  HomeView.swift
//  ReadSwipe
//
//  Created by Alissa Xu - 697 on 2025-04-11.
//

import SwiftUI

struct HomeView: View {
    private let colors: [Color] = [.red, .blue, .green]
    var body: some View {
        VStack {
            TabView {
                ForEach(colors, id: \.self) { color in
                    ZStack {
                        color
                        Text("\(color.description)")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .never))
            .cornerRadius(40)
        }
    }
}

struct DetailView: View {
    let title: String
    
    var body: some View {
        Text("Details for \(title)")
            .font(.largeTitle)
            .padding()
    }
}

