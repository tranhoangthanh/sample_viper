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
    var todoStore = TodoStore.shared
    
    init(todoItem : TodoItem) {
        self.todoItem = todoItem
    }
    
}

extension TodoDetailInteractor : TodoDetailInteractorInput {
    
    
   
    
    func deleteTodo() {

        todoStore.removeTodo(todoItem)
        presenter?.didDeleteTodo()
    }
    
    func editTodo(title: String, content: String) {

        todoItem.title = title
        todoItem.content = content
        presenter?.didEditTodo(todoItem)
    }
    
    
}


