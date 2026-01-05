//
//  TabViews.swift
//  FitnessAppV2
//
//  Created by Jonathan Banda on 12/17/25.
//

import SwiftUI

struct HomeView: View {
    @State private var date: Date = Date()
    var body: some View {
        // NavigationStack for later development
//        Text("Some sort of home view/calendar")
//            .padding(20)
//            .background(Color.orange)
            DatePicker(
                "Start Date",
                selection: $date,
                displayedComponents: [.date]
            )
            .padding(50)
            
    }
}

struct WorkoutsView: View {
    @State private var workouts : [Workouts] = Workouts.DefaultWorkouts()
    
    @State private var selectedPart = "All"
    let parts = ["All", "Biceps", "Triceps", "Chest", "Upper Back","Lower Back", "Shoulders", "Lats", "Core", "Quads", "Hamstrings", "Adductors", "Abductors", "Calves"]
    

    var filteredWorkouts: [Workouts] {
        if selectedPart == "All" {
            return workouts
        } else {
            return workouts.filter { $0.description == selectedPart }
        }
    }
    
    var body: some View {
        VStack {
            
            Picker("Choose a muscle group", selection: $selectedPart) {
                ForEach(parts, id: \.self, content: {part in
                    Text(part)})
            }
            .padding(.top, 10)
            .pickerStyle(.menu)
            
            Table(filteredWorkouts) {
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
}

#Preview {
    //HomeView()
    WorkoutsView()
}
