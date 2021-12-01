//
//  TodoListPresenter.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/25/21.
//

import Foundation


class TodoListPresenter {
    
    weak var view : TodoListView?
    var interactor : TodoListInteractorInput?
    var router: TodoListRouter?
    
    
    func showTotoDetail(_ todo : TodoItem) {
        guard let view = view else { return }
        router?.presentToDoDetailScreen(view: view, todo: todo)
    }
    
    func addTodo(_ todo : TodoItem) {
        interactor?.saveTodo(todo)
    }
    
    func viewWillAppear() {
        interactor?.retrieveTodos()
    }
    
    func removeTodo(_ todo : TodoItem) {
        interactor?.deleteTodo(todo)
    }
    
    func logOut() {
        interactor?.logOut()
    }
    
}

extension TodoListPresenter : TodoListInteractorOutput {
    func didlogOut() {
        self.router?.rootLogin()
    }
    
    
    func onError(message: String) {
        view?.showErrorMessage(message)
    }
    
    func didRetrieveTodos(_ todos: [TodoItem]) {
        view?.showTodos(todos)
    }
    
    func didRemoveTodo(_ todo: TodoItem) {
        interactor?.retrieveTodos()
    }
    
    func didAddTodo() {
        interactor?.retrieveTodos()
    }
    
    
    func didAddTodo(_ todo: TodoItem) {
        interactor?.retrieveTodos()
    }
    
    
}
