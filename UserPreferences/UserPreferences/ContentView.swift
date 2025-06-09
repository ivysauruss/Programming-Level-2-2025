//
//  ContentView.swift
//  UserPreferences
//
//  Created by Alissa Xu - 697 on 2025-04-08.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
    @AppStorage("notifsOn") private var notifsOn: Bool = true
    
    @AppStorage("username") private var username: String = ""
    
    @AppStorage("favoriteColor") private var favoriteColor: String = "Blue"
    private let colors = ["Red", "Green", "Blue", "Turquoise", "Yellow", "Purple"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Appearance")) {
                    Toggle("Dark Mode", isOn: $isDarkMode)
                        .toggleStyle(SwitchToggleStyle(tint:.blue))
                }
                
                Section(header: Text("Notify")) {
                    Toggle("Notifications", isOn: $notifsOn)
                        .toggleStyle(SwitchToggleStyle(tint: .blue))
                }
                
                Section(header: Text("User Info")) {
                    TextField("Enter your name", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Section(header: Text("Preferences")) {
                    Picker("Favorite Color", selection: $favoriteColor) {
                        ForEach(colors, id: \.self) { color in
                            Text(color).tag(color)
                        }
                    }
                }
                
                Section(header: Text("Saved Preferences")) {
                    Text("Dark Mode: \(isDarkMode ? "Enabled" : "Disabled")")
                    Text("Notifications: \(notifsOn ? "Enabled" : "Disabled")")
                    Text("Username: \(username.isEmpty ? "Not Set": username)")
                    Text("Favorite Color: \(favoriteColor)")
                }
                
                .navigationTitle("User Preferences")
            }
        }
    }
    
}
    
#Preview {
    ContentView()
}

