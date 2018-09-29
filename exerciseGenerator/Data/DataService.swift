//
//  DataService.swift
//  exerciseGenerator
//
//  Created by OSX on 6/30/18.
//  Copyright © 2018 OSX. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let chest = [
        "Pushup",
        "Crocodile pushup",
        "Dumbell fly",
        "Dumbell chest press",
        "LegUp pushup"
        
    ]
    
    func getChestExercise() -> String {
        let random = Int(arc4random_uniform(UInt32(chest.count)))
        let exercise = chest[random]
        return exercise
        
        }
    
    
    private let biceps = [
    "Barbell bicep curl",
    "Dumbell hammer curl",
    "Bumbell bicep curl",
    "Scott curl",
    "Tuber bicep curl"
    ]
    
    func getBicepsExercise() -> String {
        let random = Int(arc4random_uniform(UInt32(biceps.count)))
        let exercise = biceps[random]
        return exercise
    }
    
    private let triceps = [
    "Tricep diamond pushup",
    "Tricep dumbell press",
    "Tricep dips",
    "Tricep cable/tuber pull"
    ]
    
    func getTricepsExercise() -> String {
        let random = Int(arc4random_uniform(UInt32(triceps.count)))
        let exercise = triceps[random]
        return exercise
    }
    
   private let back = [
    "Superman",
    "Dumbell deadlift",
    "Dumbell row",
    "PullUp"
    
    ]
    
    func getBackExercise() -> String {
        let random = Int(arc4random_uniform(UInt32(back.count)))
        let exercise = back[random]
        return exercise
    }
    
    private let shoulder = [
    "Shoulder lateral raise",
    "Dumbell front raise",
    "Dumbell shoulder press",
    "Shoulder pushUp"
    ]
    
    func getShoulderExercise() -> String {
        let random = Int(arc4random_uniform(UInt32(shoulder.count)))
        let exercise = shoulder[random]
        return exercise
    }
    
    private let legs = [
    "Squats",
    "Dumbell lunges",
    "Jump-squat",
    "Romanian deadlift",
    "Sumo-squat",
    "Side squat"
    ]
    
    func getLegExercise() -> String {
        let random = Int(arc4random_uniform(UInt32(legs.count)))
        let exercise = legs[random]
        return exercise
    }
    
    private let abs = [
    "Crunches",
    "Scissiors abs",
    "Plank",
    "Superman plank",
    "Leg raise abs"
    ]
    
    func getAbsExercise() -> String {
        let random = Int(arc4random_uniform(UInt32(abs.count)))
        let exercise = abs[random]
        return exercise
    }
    
    
}

