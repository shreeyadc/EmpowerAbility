//
//  ReportForm.swift
//  Cyber-Stop
//
//  Created by Shreeya Champaneri on 2022-07-25.
//

import SwiftUI

struct ReportForm: View {
    
    @State private var fullName = ""
    @State private var dateOfEvent = Date()
    @State private var description = ""
    @State private var school = ""
    @State private var contact = ""
    @State private var platform = ""
    @State private var moreInfo = ""
    
    var body: some View {
        NavigationView {
        Form {
            Section(header: Text("Personal Information")) {
                TextField("What is your full name?", text: $fullName)
                TextField("Current school", text: $school)
                TextField("Contact (Phone Number or Email)", text: $contact)
                }
            
            Section(header: Text("Situation Details")) {
            DatePicker("Date of Event", selection: $dateOfEvent, displayedComponents: .date)
                
                TextField("Which platform did the issue occur on?", text: $platform)
            
                TextField("Please provide a description of the issue.", text: $description)
                    .frame(height: 100)
                
                TextField("Additional Information", text: $moreInfo)
                
            }
            
            
            NavigationLink(destination: Submitted(),
            label: {
                Rectangle()
                .fill(Color.white)
                .overlay(
                    Text("Submit")
                        .font(.headline)
                        .foregroundColor(Color.red)
                        .multilineTextAlignment(.center)
                        
                )
                
            }
            )
        }.navigationTitle("Report")
            
        }
    }
}



struct ReportForm_Previews: PreviewProvider {
    static var previews: some View {
        ReportForm()
    }
}
