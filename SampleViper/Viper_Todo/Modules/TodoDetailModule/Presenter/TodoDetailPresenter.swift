//
//  TodoDetailPresenter.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/25/21.
//

import Foundation


class TodoDetailPresenter {
    weak var view : TodoDetailView?
    var interactor : TodoDetailInteractorInput?
    var router : TodoDetailRouter?
    
    func viewDidLoad() {
        view?.showTodo(interactor!.todoItem)
    }
    
    func editTodo(title: String, content: String) {
        interactor?.editTodo(title: title, content: content)
    }
    
    func deleteTodo() {
        interactor?.deleteTodo()
    }
}

extension TodoDetailPresenter : TodoDetailInteractorOutput {
    
    func didDeleteTodo() {
        if let view = view {
            router?.navigateBackToListViewController(view: view)
        }
    }
    
    func didEditTodo(_ todo: TodoItem) {
        view?.showTodo(todo)
    }
    
    
}
