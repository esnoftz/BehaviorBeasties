//
//  Task.swift
//  BehaviorBeasties
//
//  Created by AVA SCHMIDT on 3/7/25.
//

import Foundation

class Task {
    var name : String
    var points : Int
    var key = ""
    
    
    init(name: String, points: Int) {
        self.name = name
        self.points = points
    }
    
    init(){
        self.name = "Please Set Task"
        self.points = 0
    }
    
    init(dict: [String: Any]) {
        // Safely unwrapping values from dictionary
        if let p = dict["points"] as? Int{
            points = p
        } else {
            points = 0
        }
        
        if let n = dict["name"] as? String{
            name = n
        } else {
            name = ""
        }

    }
    
    func saveToFirebase() {
        let dict = ["name": name, "points": points] as [String: Any]
        AppData.ref.child("tasks").childByAutoId().setValue(dict)
        key = AppData.ref.child("tasks").childByAutoId().key ?? "0"

    }
}
