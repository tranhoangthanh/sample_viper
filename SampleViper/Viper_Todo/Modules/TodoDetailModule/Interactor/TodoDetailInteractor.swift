//
//  TodoDetailInteractor.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/25/21.
//

import Foundation

class TodoDetailInteractor {
    
    weak var presenter : TodoDetailInteractorOutput?
    var todoItem: TodoItem
    
    
    init(todoItem : TodoItem) {
        self.todoItem = todoItem
    }
    
}

extension TodoDetailInteractor : TodoDetailInteractorInput {
    
    
   
    
    func deleteTodo() {
        let dataStore = CoreDataManager.shared
        dataStore.deleteTodoItem(todoItem)
        presenter?.didDeleteTodo()
    }
    
    func editTodo(title: String, content: String) {
        let dataStore = CoreDataManager.shared
        todoItem.title = title
        todoItem.content = content
        dataStore.save()
        presenter?.didEditTodo(todoItem)
    }
    
    
}


