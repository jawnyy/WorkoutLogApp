//
//  ContentView.swift
//  FitnessAppV2
//
//  Created by Jonathan Banda on 12/17/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab : Tab = .Home
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            /* Navigation Stack would go here somewhere */
            
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(Tab.Home)

            WorkoutsView()
                .tabItem {
                    Label("Workouts", systemImage: "figure.strengthtraining.traditional")
                }
                .tag(Tab.Workouts)
        }
    }
}

enum Tab {
    case Home
    case Workouts
}

#Preview {
    ContentView()
}
