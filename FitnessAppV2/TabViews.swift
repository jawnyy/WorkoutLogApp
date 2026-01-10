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

        VStack {
            
            DatePicker(
                "Select Date",
                selection: $date,
                in: ...Date(),
                displayedComponents: [.date],
            )
            .padding(50)
            
        }
    }
}

struct LogView: View {
    var body: some View {
        VStack{
            Text("Log a workout")
                .font(.system(size: 28, weight: .medium, design: .default))
                .padding(.top, 40)
            Spacer()
            
            Button("Log") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .padding(.bottom, 40)
            .buttonStyle(.bordered)
        }
    }
}

/*
 WorkoutsView shows all the workouts that I currently do, plan to add some sort of feature where I can add more in the app itself and not thru here.
 */
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
    LogView()
    //WorkoutsView()
}
