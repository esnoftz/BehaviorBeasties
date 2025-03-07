//
//  Task.swift
//  BehaviorBeasties
//
//  Created by AVA SCHMIDT on 3/7/25.
//

import Foundation

class Task{
    var name : String
    var points : Int
    init(name: String, points: Int) {
        self.name = name
        self.points = points
    }
    init(){
        self.name = "Please Set Task"
        self.points = 0
    }
}
