//
//  TextToSpeech.swift
//  EmpowerAbility
//
//  Created by Shreeya Champaneri on 2023-06-04.
//

import SwiftUI
import AVFoundation

struct TextToSpeech: View {
    
    @State private var prompt = ""
    
    var body: some View {
        NavigationView {
        Form {
            TextField("What is your prompt?", text: $prompt)
        }
        }
            
            
          
                
            
            Button("Submit") {
                let utterance = AVSpeechUtterance(string: "\(prompt)")
                utterance.voice = AVSpeechSynthesisVoice(language: "en")
                utterance.rate = 0.3
                
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
            }
            
    
        
            
        
    
}



}
