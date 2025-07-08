# ✅ TodoApp

A simple, modern, and fully functional To-Do application built with **SwiftUI**, **SwiftData**, and **MVVM architecture**. This app allows you to add, edit, complete, and delete tasks, with all data persisted locally using SwiftData.

---

## 🚀 Features

- Create new tasks with a title
- Edit existing tasks by tapping on them
- Mark tasks as completed/incomplete
- Delete tasks with swipe
- Responsive UI with SwiftUI
- Persistent local storage using **SwiftData**
- Architecture based on **MVVM**
- Fully unit-tested ViewModel logic ✅

---

## 🧱 Project Structure

```
TodoApp/
├── Models/
│   └── Task.swift
├── ViewModels/
│   └── TaskViewModel.swift
├── Views/
│   ├── TaskListView.swift
│   └── TaskFormView.swift
├── TodoApp.swift
├── TodoAppTests/
│   └── TaskViewModelTests.swift
```

---

## 🛠 Technologies

- Swift 5.9+
- SwiftUI 3+
- SwiftData (local persistence)
- MVVM
- Unit Testing (XCTest)

---

## ▶️ How to Run

1. Clone the repo:
```bash
git clone https://github.com/yourusername/todoapp.git
```

2. Open the project in Xcode:
```bash
open TodoApp.xcodeproj
```

3. Run on Simulator or a physical device

> 📦 No third-party dependencies are needed

---

## 🧪 Unit Testing

The ViewModel is fully tested with `XCTest`. To run tests:

1. Select the `TodoAppTests` target
2. Use `Cmd + U` to run all tests

Tested behaviors:
- Add new task
- Edit task title
- Toggle completion
- Delete task

---

## 📌 Future Enhancements

- Add task categories or priorities
- Add due dates and reminders
- Implement dark/light mode toggle
- UI polish and animations
- iCloud sync (optional)


