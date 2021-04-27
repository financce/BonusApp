//
//  MainView.swift
//  AppExample
//
//  Created by slava on 27/04/2021.
//

import SwiftUI
import API_IproBonus
import MainViewBonus

struct MainView: View {

    
    @ObservedObject var obs: Observer
    @EnvironmentObject var obsSettings: ObserverSettings
    
    init() {
         let clientID = "2c44d8c2-c89a-472e-aab3-9a8a29142315"
         let deviceID = "7db72635-fd0a-46b9-813b-1627e3aa02ea"
        self.obs = Observer(idClient: clientID, idDevice: deviceID)
    }
    
    var body: some View {
        MainViewswift(logo: "Логотип", type: obs.typeBonus, quantity: Double(obs.bonusCurrentQuantity), burningQuantity: Double(obs.forBurningQuantity), dateforBurning: obs.dateBurning, txtSize: CGFloat(obsSettings.textSize), txtColor: .gray, headColor: .black, headTxtSize: CGFloat(obsSettings.headlineSize), bgColor: obsSettings.bgColor)
            

    }
}
