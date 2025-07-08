//
//  TaskViewModel.swift
//  ToDo
//
//  Created by Andres Lopez on 8/07/25.
//

import Foundation
import SwiftData


@MainActor
class TaskViewModel: ObservableObject{
    @Published var title: String = ""
    
    func addTask(modelContext: ModelContext){
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else { return }
        let newTask = Task(title: title)
        modelContext.insert(newTask)
        try? modelContext.save()
        title = ""
    }
    
    func updateTask(_ task: Task, newTitle: String, modelContex: ModelContext){
        guard !newTitle.trimmingCharacters(in: .whitespaces).isEmpty else { return }
        task.title = newTitle
        try? modelContex.save()
    }
    
    func toggleCompletion(_ task: Task, modelContext: ModelContext){
        task.isCompleted.toggle()
        try? modelContext.save()
    }
    
    func deleteTask(_ task: Task, modelContext: ModelContext){
        modelContext.delete(task)
        try? modelContext.save()
    }
}
