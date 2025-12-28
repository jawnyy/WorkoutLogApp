//
//  TabViews.swift
//  FitnessAppV2
//
//  Created by Jonathan Banda on 12/17/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        // NavigationStack for later development
        Text("Some sort of home view/calendar")
            .padding(20)
            .background(Color.orange)
    }
}

struct WorkoutsView: View {
    @State private var workouts : [Workouts] = Workouts.DefalutWorkouts()
    var body: some View {
        // NavigationStack for later development
        
        Table(workouts) {
            TableColumn("Name") { workout in
                VStack(alignment: .leading) {
                    Text(workout.name)
                        .font(.headline)
                    
                    Text(workout.description)
                        .foregroundColor(.secondary)
                }
                
            }
        }
        .padding(10)
    }
}

#Preview {
    //HomeView()
    WorkoutsView()
}
