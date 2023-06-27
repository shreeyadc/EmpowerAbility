//
//  TextToSpeech.swift
//  EmpowerAbility
//
//  Created by Shreeya Champaneri on 2023-06-04.
//

import SwiftUI
import AVFoundation

struct TextToSpeech: View {
    
    let title = "Enter your prompt below and press submit to receive an audio output!"
    
    @State private var prompt = ""
    
    var body: some View {
        
        
        Text(title)
            .font(.title2)
            .fontWeight(.medium)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .foregroundColor(Color.cyan)
            
        
        
        NavigationView {
        Form {
            TextField("What is your prompt?", text: $prompt)
        }
        }
            
            
            Button("Submit") {
                let utterance = AVSpeechUtterance(string: "\(prompt)")
                utterance.voice = AVSpeechSynthesisVoice(language: "en")
                utterance.rate = 0.4
                
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
            }
    
}

}
