//
//  TodoDetailInteractorIO.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/25/21.
//

import Foundation


protocol TodoDetailInteractorInput {
    var todoItem: TodoItem {get set}
    func deleteTodo()
    func editTodo(title: String, content: String)
}


protocol TodoDetailInteractorOutput : AnyObject {
    func didDeleteTodo()
    func didEditTodo(_ todo: TodoItem) 
}
