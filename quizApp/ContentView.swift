//
//  ContentView.swift
//  quizApp
//
//  Created by Scholar on 26/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("cream").ignoresSafeArea()
                Rectangle()
                    .fill(Color(hue: 0.971, saturation: 0.34, brightness: 0.99))
                    .cornerRadius(10)
                    .frame(width:350, height:150)
                VStack {
                    Image(systemName: "smiley")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                        
                    Text("Welcome to the quiz!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Text("If you're indecisive, let 'random' choose for you :)")
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    NavigationLink(destination: question1()) {
                        Text("Start").underline()
                            .foregroundColor(Color.blue)
                    }
                }
                .padding()
                
            }
        }//navigationstack
    }//body
}//struct

#Preview {
    ContentView()
}
