//
//  TodoItem.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/25/21.
//





//import Foundation
//
//class AddDataManager : NSObject {
//    var dataStore  = CoreDataManager.shared
//    
//    func addNewEntry(_ entry: Todo) {
//        let newEntry = dataStore.newTodoItem()
//        newEntry.title = entry.title
//        newEntry.content = entry.content
//        dataStore.save()
//    }
//}






//class TodoItem {
//
//    var title: String
//    var content: String
//
//    init(title: String, content: String) {
//        self.title = title
//        self.content = content
//    }
//}
//
//
//
//
//
//class TodoStore {
//
//    private init() {}
//    public static let shared = TodoStore()
//
//    public private(set) var todos: [TodoItem] = [
//        TodoItem(title: "Focus", content: "Decide on what you want to focus in your life"),
//        TodoItem(title: "Value", content: "Decide on what values are meaningful in your life"),
//        TodoItem(title: "Action", content: "Decide on what you should do to achieve empowering life")
//    ]
//
//    func addTodo(_ todo: TodoItem) {
//        todos.append(todo)
//    }
//
//    func removeTodo(_ todo: TodoItem) {
//        if let index = todos.firstIndex(where: { $0 === todo }) {
//            todos.remove(at: index)
//        }
//    }
//
//}
