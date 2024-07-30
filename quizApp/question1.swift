//
//  question1.swift
//  quizApp
//
//  Created by Scholar on 26/07/2024.
//

import SwiftUI

struct question1: View {
    @State private var animal = ""
    @State private var randomNum = 0
    @State private var backColour = "cream"

    var body: some View {
        NavigationStack{
            ZStack{
                Color(backColour).ignoresSafeArea()
                VStack{
                    ZStack{
                        Rectangle()
                            .fill(Color.white)
                            .cornerRadius(10)
                            .frame(width:250, height:50)
                        Text("Favourite Animal")
                            .font(.title)
                        
                    }
                    ZStack{
                        
                        Button("dog") {
                            animal = "🐶"
                            backColour = "caramel"
                        }//button
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        
                        .buttonBorderShape(.roundedRectangle(radius: 16))
                        .tint(Color(hue: 0.971, saturation: 0.34, brightness: 0.99))
                        
                        
                    }//zstack
                    ZStack{
                        
                        Button("cat") {
                            //print(animal)
                            animal = "🐱"
                            backColour = "garfield"
                        }//button
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 16))
                        .tint(Color(hue: 0.971, saturation: 0.34, brightness: 0.99))
                        
                    }//zstack
                    ZStack{
                        
                        Button("frog") {
                            //print(animal)
                            animal = "🐸"
                            backColour = "lime"
                        }//button
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 16))
                        .tint(Color(hue: 0.971, saturation: 0.34, brightness: 0.99))
                        
                    }//zstack
                    ZStack{
                        
                        Button("random") {
                            //print(animal)
                            randomNum = Int.random(in: 1..<4)//1,2,3
                            if randomNum == 1{
                                animal = "🦄"
                                backColour = "candyfloss"
                            } else if randomNum == 2{
                                animal = "🐲"
                                backColour = "alarm"
                            } else{
                                animal = "🐧"
                                backColour = "snow"
                            }
                            
                            
                        }//button
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 16))
                        .tint(Color(hue: 0.971, saturation: 0.34, brightness: 0.99))
                        
                    }//zstack
                    
                    NavigationLink(destination: question2()) {
                        Text("Next question")
                            .foregroundColor(Color.brown)
                    }//nav link
                    
                    //emoji
                    Text(animal)
                        .font(.title)
                }//vstack1
            }//zstack
        }//navigationstack
    }
}

#Preview {
    question1()
}
