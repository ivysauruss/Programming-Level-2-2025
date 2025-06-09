//
//  NewView.swift
//  TabsAndNavigation
//
//  Created by Alissa Xu - 697 on 2025-04-07.
//

import SwiftUI

struct NewView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: DetailView(title: "New Post")) {
                    Text("Create")
                }
                NavigationLink(destination: DetailView(title: "Archives")) {
                    Text("See archives")
                }
            }
                    .navigationTitle("Home")
        }
    }
}


#Preview {
    NewView()
}
