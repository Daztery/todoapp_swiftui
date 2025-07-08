//
//  ToDoApp.swift
//  ToDo
//
//  Created by Andres Lopez on 8/07/25.
//

import SwiftUI
import SwiftData

@main
struct ToDoApp: App {
    var body: some Scene {
        WindowGroup {
            TaskListView()
        }
        .modelContainer(for: Task.self)
    }
}
