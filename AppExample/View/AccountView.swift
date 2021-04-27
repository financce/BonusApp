//
//  AccountView.swift
//  AppExample
//
//  Created by slava on 27/04/2021.
//

import SwiftUI

struct AccountView: View {
    @EnvironmentObject var obs: ObserverSettings
  
    var body: some View {
            GroupBox(label: Text("Settings")) {
                Text("Client ID")
                TextField("Client ID", text: $obs.clientID)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("Device ID")
                TextField("Device ID", text: $obs.deviceID)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Stepper("HeadlineSize: \(obs.headlineSize)", value: $obs.headlineSize)
                Stepper("TextSize: \(obs.textSize)", value: $obs.textSize)
                
                ColorPicker("Background", selection: $obs.bgColor)
                
                Spacer()
            }
        }
    }

