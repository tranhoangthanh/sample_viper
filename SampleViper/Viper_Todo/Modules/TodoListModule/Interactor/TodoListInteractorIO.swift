//
//  TodoListInteractorIO.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/25/21.
//

import Foundation
import CoreData

protocol TodoListInteractorInput {
   
    func retrieveTodos()
    func saveTodo(_ todo: TodoItem)
    func deleteTodo(_ todo: TodoItem)
    func logOut()
}


protocol TodoListInteractorOutput : AnyObject {
    func onError(message: String)
    func didRetrieveTodos(_ todos: [TodoItem])
    func didRemoveTodo(_ todo: TodoItem)
    func didAddTodo(_ todo: TodoItem)
    func didlogOut()
}
