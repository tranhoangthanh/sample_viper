//
//  TodoListInteractor.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/25/21.
//

import Foundation

class TodoListInteractor {
    
    weak var presenter : TodoListInteractorOutput?
    var todoStore = TodoStore.shared
    var items : [TodoItem] {
        return todoStore.todos
    }
    
    
}

extension TodoListInteractor : TodoListInteractorInput {
    
    
    func retrieveTodos() {
        presenter?.didRetrieveTodos(items)
    }
    
    func saveTodo(_ todo: TodoItem) {
        if todo.content.isEmpty || todo.title.isEmpty {
            presenter?.onError(message: "Can dien du thong tin")
            return
        }
        todoStore.addTodo(todo)
        presenter?.didAddTodo(todo)
    }
    
    func deleteTodo(_ todo: TodoItem) {
        todoStore.removeTodo(todo)
        presenter?.didRemoveTodo(todo)
    }
    
    
}
