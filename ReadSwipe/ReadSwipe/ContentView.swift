//
//  ContentView.swift
//  ReadSwipe
//
//  Created by Alissa Xu - 697 on 2025-03-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            NewView()
                .tabItem {
                    Label("New", systemImage: "plus.circle.fill")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .padding()
    }
}
