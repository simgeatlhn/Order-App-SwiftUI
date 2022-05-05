//
//  ContentView.swift
//  StepBased-Instructions
//
//  Created by simge on 5.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = "Order"
    
    var body: some View {
        TabView{
            OrderView()
                .tabItem {
                    Label("Menü", systemImage: "house.fill")
                    
                }
            
            OrderView()
                .tabItem {
                    Label("Kategoriler", systemImage: "list.dash")
                    
                }
            
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "cart.fill")
                    
                }
            
            OrderView()
                .tabItem {
                    Label("Profil", systemImage: "person.fill")
                    
                }
            
        }
        .accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


