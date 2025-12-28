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
    
    static func DefaultWorkouts() -> [Workouts] {
        return [
            Workouts(name: "Dumbbell Curls", description: "Biceps"),
            Workouts(name: "Preacher Curls", description: "Biceps"),
            Workouts(name: "Incline Dumbbell Curls", description: "Biceps"),
            Workouts(name: "Barbell Curls", description: "Biceps"),
            Workouts(name: "Hammer Curls", description: "Brachialis"),
            Workouts(name: "Tricep Extensions", description: "Triceps"),
            Workouts(name: "Overhead Tricep Extensions", description: "Triceps"),
            Workouts(name: "Skullcrushers", description: "Triceps"),
            Workouts(name: "Rope Tricep Extensions", description: "Triceps"),
            Workouts(name: "Tricep Dips", description: "Triceps"),
            Workouts(name: "Seated Dumbbell Press", description: "Shoulders"),
            Workouts(name: "Cable Lateral Raise", description: "Shoulders"),
            Workouts(name: "Cable Face Pull", description: "Shoulders"),
            Workouts(name: "Machine Reverse Fly", description: "Shoulders"),
            Workouts(name: "Dumbbell Bench Press", description: "Chest"),
            Workouts(name: "Incline Dumbbell Bench Press", description: "Chest"),
            Workouts(name: "Pec Deck", description: "Chest"),
            Workouts(name: "Chest Dip", description: "Chest"),
            Workouts(name: "Machine Bench Press", description: "Chest"),
            Workouts(name: "Seated Cable Row", description: "Upper Back"),
            Workouts(name: "Machine Row", description: "Upper Back"),
            Workouts(name: "Dumbbell Deadlift", description: "Lower Back"),
            Workouts(name: "Lat Pull Down", description: "Lats"),
            Workouts(name: "Pull Up", description: "Lats"),
            Workouts(name: "Machine Lat Pull Down", description: "Lats"),
            Workouts(name: "Seated Machine Curl", description: "Core"),
            Workouts(name: "Leg Raise", description: "Core "),
            Workouts(name: "Machine Obliques", description: "Core"),
            Workouts(name: "Leg Extension", description: "Quads"),
            Workouts(name: "Leg Press", description: "Quads"),
            Workouts(name: "Machine Hack Squat", description: "Quads"),
            Workouts(name: "Leg Curl", description: "Hamstrings"),
            Workouts(name: "Seated Leg Curl", description: "Hamstrings"),
            Workouts(name: "Romanian Deadlift", description: "Hamstrings"),
            Workouts(name: "Hip Adduction Machine", description: "Adductors"),
            Workouts(name: "Hip Abduction Machine", description: "Abductors"),
            Workouts(name: "Standing Calf Raises", description: "Calves")]
    }
}
