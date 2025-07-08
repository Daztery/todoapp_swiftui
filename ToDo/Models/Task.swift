//
//  Task.swift
//  ToDo
//
//  Created by Andres Lopez on 8/07/25.
//

import Foundation
import SwiftData

@Model
class Task{
    var title: String
    var isCompleted: Bool
    var createdAt: Date
    
    init(title:String, isCompleted: Bool = false, createdAt: Date = .now){
        self.title = title
        self.isCompleted = isCompleted
        self.createdAt = createdAt
    }
}
