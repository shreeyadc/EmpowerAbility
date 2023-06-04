//
//  Resources.swift
//  EmpowerAbility
//
//  Created by Shreeya Champaneri on 2023-06-04.
//

import SwiftUI




struct Resources: View {
    var body: some View {
        
        NavigationView {
            
        }.navigationTitle("Resources")
        
        VStack (spacing:40){
        
        Link(destination: URL(string: "https://learningally.org/")!, label:{
            Text("Learning Ally")
                .bold()
                .font(.title3)
                .frame(width: 300, height: 75, alignment: .center)
                .background(Color.cyan)
                .foregroundColor(Color.white)
                .cornerRadius(12)
        })
            
            
            Link(destination: URL(string: "https://www.boddlelearning.com/")!, label:{
                Text("Boddle - Math made fun!")
                    .bold()
                    .font(.title3)
                    .frame(width: 300, height: 75, alignment: .center)
                    .background(Color.cyan)
                    .foregroundColor(Color.white)
                    .cornerRadius(12)
            })
            
            Link(destination: URL(string: "https://www.youtube.com/watch?v=nhPutEQik_I")!, label:{
                Text("Visual Meditation")
                    .bold()
                    .font(.title3)
                    .frame(width: 300, height: 75, alignment: .center)
                    .background(Color.cyan)
                    .foregroundColor(Color.white)
                    .cornerRadius(12)
            })
            
            
            
            Link(destination: URL(string: "https://www.youtube.com/watch?v=30VMIEmA114")!, label:{
                Text("5-4-3-2-1 Method")
                    .bold()
                    .font(.title3)
                    .frame(width: 300, height: 75, alignment: .center)
                    .background(Color.cyan)
                    .foregroundColor(Color.white)
                    .cornerRadius(12)
            })
            
            
        
        }.padding(.bottom, 150)
    }
}

struct Resources_Previews: PreviewProvider {
    static var previews: some View {
        Resources()
    }
}
