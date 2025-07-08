//
//  TaskFormView.swift
//  ToDo
//
//  Created by Andres Lopez on 8/07/25.
//

import SwiftUI

struct TaskFormView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var modelContext
    @ObservedObject var viewModel: TaskViewModel
    var taskToEdit: Task?
    @State private var title: String = ""

    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Ingresar Tarea", text: $title)
            }
            .navigationTitle(taskToEdit == nil ? "Nueva Tarea" : "Editar Tarea")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Guardar") {
                        if let task = taskToEdit {
                            viewModel.updateTask(task, newTitle: title, modelContex: modelContext)
                        } else {
                            viewModel.title = title
                            viewModel.addTask(modelContext: modelContext)
                        }
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancelar") {
                        dismiss()
                    }
                }
            }
            .onAppear {
                title = taskToEdit?.title ?? ""
            }
        }
    }
}
