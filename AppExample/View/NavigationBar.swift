//
//  NavigationBar.swift
//  AppExample
//
//  Created by slava on 27/04/2021.
//

import SwiftUI

struct NavigationBar: View {
    @State var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            MainView().tabItem {
                Image(systemName: "bubble.right")
                Text("Main")
            }.tag(0)
            AccountView().tabItem {
                Image(systemName: "person")
                Text("Account")
            }.tag(1)
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
