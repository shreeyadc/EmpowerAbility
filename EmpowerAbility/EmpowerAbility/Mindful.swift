//
//  Mindful.swift
//  EmpowerAbility
//
//  Created by Shreeya Champaneri on 2023-06-04.
//

import SwiftUI

struct Mindful: View {
    var body: some View {
        
        NavigationView {
            
        List {
            
        Text("Five finger breathing technique ✋")
                .bold()
            .font(.title)
        Text("1. Stretch your hand out so you have space between your fingers.")
            
        Text("2. Hold up your pointer finger from the other hand.")

        Text("3. Start at the bottom of your thumb. Use your pointer finger to trace up your thumb as you slowly breathe in through your mouth.")
    
        Text("4. When you get to the top of your thumb, slowly breathe out your nose as you trace down the other side.")
            
        Text("5. Repeat for all of your fingers until you have traced your hand.")
        Text("Keep it up, you're doing great!")
                .bold()
                .font(.headline)
        }.navigationTitle("Mindfulness Activities")
        }
    }
}

struct Mindful_Previews: PreviewProvider {
    static var previews: some View {
        Mindful()
    }
}


