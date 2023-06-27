//
//  ContentView.swift
//  EmpowerAbility
//
//  Created by Shreeya Champaneri on 2023-06-04.
//

import SwiftUI

struct CustomColor {
    static let grapefruit = Color("grapefruit")
    static let lightgreen = Color("lightgreen")
    static let lightblue = Color("lightblue")
}


struct ContentView: View {
    
    let title = "Welcome to EmpowerAbility!"
    
    var body: some View {
        
            NavigationView {
                
                VStack (spacing:20){
                        
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Text("Your one-stop destination with tools to help you succeed at school - good luck!")
                    .font(.body)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 50)
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                    
                NavigationLink(destination: TextToSpeech(),
                label: {
                    Circle()
                    .fill(CustomColor.grapefruit)
                    .frame(width: 190, height: 190)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "megaphone")
                            .padding(.bottom, 46)
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                    )
                    .overlay(
                        Text("Text-to-speech")
                            .font(.title2)
                            .fontWeight(.black)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(.top, 40)
                    )
            }
            )
                    
                    
                    NavigationLink(destination: Resources(),
                    label: {
                        Rectangle()
                            .fill(CustomColor.lightblue)
                        .frame(width: 225, height: 150)
                        .cornerRadius(12)
                        .shadow(radius: 10)
                        .overlay(
                            Image(systemName: "book")
                                .padding(.bottom, 40)
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        )
                        .overlay(
                            Text("Resources")
                                .font(.title2)
                                .fontWeight(.black)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.top, 40)
                        )
                }
                )
                    .navigationTitle("Home")
                    .navigationBarHidden(true)
                    
                    
                    
                    NavigationLink(destination: SignLang(),
                    label: {
                        Rectangle()
                        .fill(CustomColor.lightgreen)
                        .frame(width: 225, height: 150)
                        .cornerRadius(12)
                        .shadow(radius: 10)
                        .overlay(
                            Image(systemName: "hands.sparkles")
                                .padding(.bottom, 70)
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        )
                        .overlay(
                            Text("Sign Language Chart")
                                .font(.title2)
                                .fontWeight(.black)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .padding(.top, 40)
                        )
                }
                )
                    .navigationTitle("Home")
                    .navigationBarHidden(true)
                    
                    
                    
                    
        }
                
}
}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
