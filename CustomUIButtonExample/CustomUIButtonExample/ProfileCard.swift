//
//  ProfileCard.swift
//  CustomUIButtonExample
//
//  Created by Alissa Xu - 697 on 2025-04-09.
//

import Foundation

import SwiftUI

struct ProfileCard: View {
    var name: String
    var bio: String
    var image: String
    
    var body: some View {
        VStack(spacing: 10) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 130, height: 130)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white,lineWidth: 4))
                .shadow(radius:10)
            
            Text(name)
                .font(.headline)
                .fontWeight(.bold)
            
            Text(bio)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: .gray, radius: 5, x: 0, y: 3)
    }
}
