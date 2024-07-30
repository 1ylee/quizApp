//
//  question3.swift
//  quizApp
//
//  Created by Scholar on 26/07/2024.
//

import SwiftUI

struct question3: View {
    @State private var drink = ""
    @State private var randomNum = 0
    @State private var comment = ""
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
                        Text("Favourite Drink")
                            .font(.title)
                        
                    }
                    ZStack{
                        
                        Button("coffee") {
                            //print(animal)
                            drink = "☕️"
                            backColour = "caramel"
                            comment = ""
                        }//button
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 16))
                        .tint(Color(hue: 0.971, saturation: 0.34, brightness: 0.99))
                        
                    }//zstack
                    ZStack{
                        
                        Button("juice") {
                            //print(animal)
                            drink = "🧃"
                            backColour = "alarm"
                            comment = ""
                        }//button
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 16))
                        .tint(Color(hue: 0.971, saturation: 0.34, brightness: 0.99))
                        
                    }//zstack
                    ZStack{
                        
                        Button("tea") {
                            //print(animal)
                            drink = "🍵"
                            backColour = "lime"
                            comment = ""
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
                                drink = "💧"
                                backColour = "snow"
                                comment = ""
                            } else if randomNum == 2{
                                drink = "🧋"
                                backColour = "cute"
                                comment = ""
                            } else{
                                drink = "🥛"
                                backColour = "candyfloss"
                                comment = "why..."
                            }
                            
                        }//button
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 16))
                        .tint(Color(hue: 0.971, saturation: 0.34, brightness: 0.99))
                        
                    }//zstack
                    NavigationLink(destination: reviewPage()) {
                        Text("Finish")
                            .foregroundColor(Color.brown)
                    }//nav link
                    
                    //emoji
                    Text(drink)
                        .font(.title)
                    Text(comment)
                        .font(.title)
                }//vstack1
            }//zstack
        }//navigationstack
    }
}

#Preview {
    question3()
}
