//
//  TaskListView.swift
//  ToDo
//
//  Created by Andres Lopez on 8/07/25.
//

import SwiftUI
import SwiftData


struct TaskListView: View {
    @Query(sort: \Task.createdAt, order: .reverse) var tasks: [Task]
    @Environment(\.modelContext) private var modelContext
    @StateObject private var viewModel = TaskViewModel()

    @State private var showForm = false
    @State private var selectedTaskToEdit: Task? = nil

    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks) { task in
                    HStack {
                        Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                            .onTapGesture {
                                viewModel.toggleCompletion(task, modelContext: modelContext)
                            }

                        Text(task.title)
                            .strikethrough(task.isCompleted)
                            .onTapGesture {
                                selectedTaskToEdit = task
                            }
                    }
                }
                .onDelete { indexSet in
                    indexSet.forEach { i in
                        viewModel.deleteTask(tasks[i], modelContext: modelContext)
                    }
                }
            }
            .navigationTitle("Mis Tareas")
            .toolbar {
                Button {
                    showForm = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showForm) {
                TaskFormView(viewModel: viewModel)
            }
            .sheet(item: $selectedTaskToEdit) { task in
                TaskFormView(viewModel: viewModel, taskToEdit: task)
            }
        }
    }
}
