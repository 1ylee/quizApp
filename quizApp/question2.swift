//
//  question2.swift
//  quizApp
//
//  Created by Scholar on 26/07/2024.
//

import SwiftUI

struct question2: View {
    @State private var favColour = ""
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
                        Text("Favourite Colour")
                            .font(.title)
                        
                    }
                    ZStack{
                        
                        Button("purple") {
                            //print(animal)
                            favColour = "💜"
                            backColour = "lilac"
                        }//button
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 16))
                        .tint(Color(hue: 0.971, saturation: 0.34, brightness: 0.99))
                        
                    }//zstack
                    ZStack{
                        
                        Button("blue") {
                            //print(animal)
                            favColour = "💙"
                            backColour = "snow"
                        }//button
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 16))
                        .tint(Color(hue: 0.971, saturation: 0.34, brightness: 0.99))
                        
                    }//zstack
                    ZStack{
                        
                        Button("pink") {
                            //print(animal)
                            favColour = "🩷"
                            backColour = "candyfloss"
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
                                favColour = "❤️"
                                backColour = "alarm"
                            } else if randomNum == 2{
                                favColour = "💛"
                                backColour = "garfield"
                            } else{
                                favColour = "💚"
                                backColour = "lime"
                            }
                            
                            
                        }//button
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 16))
                        .tint(Color(hue: 0.971, saturation: 0.34, brightness: 0.99))
                        
                    }//zstack
                    
                    NavigationLink(destination: question3()) {
                        Text("Next question")
                            .foregroundColor(Color.brown)
                    }//nav link
                    
                    //emoji
                    Text(favColour)
                        .font(.title)
                }//vstack1
            }
        }//navigationstack
    }
}

#Preview {
    question2()
}
