//
//  ContentView.swift
//  FitnessAppV2
//
//  Created by Jonathan Banda on 12/17/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            WorkoutsView()
                .tabItem {
                    Image(systemName: "figure.strengthtraining.traditional")
                    Text("Workouts")
                }
        }
        .padding(10)
    }
}

#Preview {
    ContentView()
}
