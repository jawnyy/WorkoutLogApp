//
//  LogWorkout.swift
//  FitnessAppV2
//
//  Created by Jonathan Banda on 1/10/26.
//

import Foundation

// something will go here...

class WorkoutStorage {
    static let shared = WorkoutStorage()

    private let fileURL: URL = {
        let documents = FileManager.default.urls(
            for: .documentDirectory,
            in: .userDomainMask
        )[0]
        return documents.appendingPathComponent("workouts.json")
    }()

    func save(_ workouts: [LogWorkout]) {
        do {
            let data = try JSONEncoder().encode(workouts)
            try data.write(to: fileURL)
        } catch {
            print("Saving failed:", error)
        }
    }

    func load() -> [LogWorkout] {
        do {
            let data = try Data(contentsOf: fileURL)
            return try JSONDecoder().decode([LogWorkout].self, from: data)
        } catch {
            return []
        }
    }
}
