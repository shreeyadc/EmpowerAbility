//
//  Submitted.swift
//  Cyber-Stop
//
//  Created by Shreeya Champaneri on 2022-07-27.
//

import SwiftUI

struct Submitted: View {
    var body: some View {
        VStack (spacing:20) {
        Rectangle()
                .fill(Color.red)
            .frame(width: 350, height: 150)
            .cornerRadius(5)
            
        .overlay(Image(systemName: "checkmark.circle")
            .padding(.bottom, 155)
            .font(.system(size: 54))
            .foregroundColor(Color.black)
            .multilineTextAlignment(.center))
        
        .overlay(Text("Congratulations, your report has successfully been submitted."))
            .font(.title2)
            .navigationBarBackButtonHidden(true)
            .foregroundColor(Color.white)
            .padding(.bottom, 60)

            NavigationLink(destination: Mindful(),
            label: {
                Rectangle()
                .fill(Color.blue)
                .frame(width: 350, height: 130)
                .cornerRadius(20)
                .shadow(radius: 12)
                .overlay(
                    Text("See what you can do while your report is processed!")
                        .bold()
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                        .padding(.leading, 15)
                        .padding(.trailing, 90)
                )
                
                .overlay(
                    Image(systemName: "arrow.right")
                        .foregroundColor(Color.white)
                        .padding(.leading, 250)
                        .font(.system(size: 50))
                )
                
            }
            ).padding(.bottom, 10)
            
            
            NavigationLink(destination: Resources(),
            label: {
                Rectangle()
                .fill(Color.cyan)
                .frame(width: 350, height: 90)
                .cornerRadius(20)
                .shadow(radius: 12)
                .overlay(
                    Text("Check out some resources!")
                        .bold()
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                        .padding(.leading, 9)
                        .padding(.trailing, 90)
                )
                
                .overlay(
                    Image(systemName: "arrow.right")
                        .foregroundColor(Color.white)
                        .padding(.leading, 250)
                        .font(.system(size: 50))
                )
                
            }
            ).padding(.bottom, 100)
            
            
            
    }
}
}

struct Submitted_Previews: PreviewProvider {
    static var previews: some View {
        Submitted()
    }
}
