//
//  ObserverSettings.swift
//  AppExample
//
//  Created by slava on 27/04/2021.
//

import SwiftUI


class ObserverSettings: ObservableObject {
    @Published var clientID = "2c44d8c2-c89a-472e-aab3-9a8a29142315"
    @Published var deviceID = "7db72635-fd0a-46b9-813b-1627e3aa02ea"
    @Published var headlineSize = 24
    @Published var textSize = 16
    @Published var bgColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1){
        willSet {
            print(newValue)
        }
    }
}
