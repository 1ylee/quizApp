//
//  reviewPage.swift
//  quizApp
//
//  Created by Scholar on 26/07/2024.
//

import SwiftUI

struct reviewPage: View {
    @State private var message = ""

    var body: some View {
        NavigationStack{
            ZStack{
                Color("cream").ignoresSafeArea()
                VStack{
                    ZStack{
                        Rectangle()
                            .fill(Color(hue: 0.971, saturation: 0.34, brightness: 0.99))
                            .cornerRadius(10)
                            .frame(width:350, height:50)
                        Text("Thanks for taking my quiz!")
                            .font(.title)
                            .foregroundColor(Color.white)
                        
                    }
                    
                    //Text("Your favourite animal is a \(animal)")
                    TextField("Ideas for next topics?", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                        .background(Color.white)
                        .border(Color.gray)
                        .frame(width:300, height:50)
                        .padding()
                    Button("Submit", systemImage: "play.circle") {
                        message = "thanks for the suggestion!"
                    }//button
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle(radius: 16))
                    .tint(Color(hue: 0.971, saturation: 0.34, brightness: 0.99))
                    NavigationLink(destination: ContentView()) {
                        Text("Retake quiz")
                            .foregroundColor(Color.brown)
                    }
                    Text(message)
                }//vstack
            }//zstack
        }//nstack
    }
}

#Preview {
    reviewPage()
}
