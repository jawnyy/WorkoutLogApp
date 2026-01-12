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
    
    @State private var workoutName = ""
    @State private var weight = ""
    @State private var sets = ""
    
    // I should probably move this...
    let workoutList = [
        "Dumbbell Curls",
        "Preacher Curls",
        "Incline Dumbbell Curls",
        "Barbell Curls",
        "Hammer Curls",
        "Tricep Extensions",
        "Overhead Tricep Extensions",
        "Skullcrushers",
        "Rope Tricep Extensions",
        "Tricep Dips",
        "Seated Dumbbell Press",
        "Cable Lateral Raise",
        "Cable Face Pull",
        "Machine Reverse Fly",
        "Dumbbell Bench Press",
        "Incline Dumbbell Bench Press",
        "Pec Deck",
        "Chest Dip",
        "Machine Bench Press",
        "Seated Cable Row",
        "Machine Row",
        "Dumbbell Deadlift",
        "Lat Pull Down",
        "Pull Up",
        "Machine Lat Pull Down",
        "Seated Machine Curl",
        "Leg Raise",
        "Machine Obliques",
        "Leg Extension",
        "Leg Press",
        "Machine Hack Squat",
        "Leg Curl",
        "Seated Leg Curl",
        "Romanian Deadlift",
        "Hip Adduction Machine",
        "Hip Abduction Machine",
        "Standing Calf Raises"
    ]
    
    var availableWorkouts: [String] {
        workoutList.filter {
            workoutName.isEmpty
            ? false
            : $0.localizedCaseInsensitiveContains(workoutName)
        }
    }
    
    var body: some View {
        VStack{
            Text("Log a workout")
                .font(.system(size: 28, weight: .medium, design: .default))
                .padding(.top, 40)
            Spacer()
            
            Form {
                
                TextField("Workout name", text: $workoutName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                ForEach(availableWorkouts, id: \.self) { suggestion in
                        Text(suggestion)
                        .padding(8)
                        .foregroundColor(Color.blue)
                            .onTapGesture {
                                workoutName = suggestion
                            }
                    }
                
                TextField("Weight amount", text: $weight)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                    .padding()
                
                TextField("Number of sets", text: $sets)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                    .padding()
            }
            .padding()
            .scrollContentBackground(.hidden)
            .background(Color.clear)
            
            Button("Log") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .padding(.bottom, 300)
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
