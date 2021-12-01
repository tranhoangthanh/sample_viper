//
//  TodoListInteractor.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/25/21.
//

import Foundation
import CoreData

class TodoListInteractor {
    
    weak var presenter : TodoListInteractorOutput?
   
    var items : [TodoItem] = []
    
    
}

extension TodoListInteractor : TodoListInteractorInput {
    
    func logOut() {
        let dataStore = CoreDataManager.shared
        dataStore.deleteLoginEntity()
        
        presenter?.didlogOut()
    }
    func retrieveTodos() {
        items = CoreDataManager.shared.fetchTodo()
        presenter?.didRetrieveTodos(items)
    }
    
    
    
    func saveTodo(_ todo: TodoItem) {
        if  todo.title!.isEmpty || todo.content!.isEmpty {
            presenter?.onError(message: "Can dien du thong tin")
            return
        }
        let dataStore = CoreDataManager.shared
        dataStore.save()
        presenter?.didAddTodo(todo)
      
    }
    
    func deleteTodo(_ todo:TodoItem) {
        let dataStore = CoreDataManager.shared
        dataStore.deleteTodoItem(todo)
        presenter?.didRemoveTodo(todo)
    }
    
    
}
