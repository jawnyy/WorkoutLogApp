//
//  Workouts.swift
//  FitnessAppV2
//
//  Created by Jonathan Banda on 12/17/25.
//

import Foundation

struct Workouts: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let description: String
    
    init (name: String, description: String) {
        self.name = name
        self.description = description
    }
    
    static func DefalutWorkouts() -> [Workouts] {
        return [
            Workouts(name: "Chest Day", description: "Workout to target the chest muscles"),
            Workouts(name: "Back Day", description: "Workout to target the back muscles"),
            Workouts(name: "Shoulders Day", description: "Workout to target the shoulders muscles")]
    }
}
