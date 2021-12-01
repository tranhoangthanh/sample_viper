//
//  TodoListRouter.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/25/21.
//

import Foundation
import UIKit

class TodoListRouter {
    
     func createrTodoListModule() -> UIViewController {
        
        let view = TodoListViewControler()
        let presenter = TodoListPresenter()
        let interactor = TodoListInteractor()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        interactor.presenter = presenter
        presenter.router = self
         
        return view
        
        
    }
    
  
    func rootLogin() {
        let router = LoginRouter()
        let vc = router.checkLogin()
        
        if let keyWindow = UIWindow.key {
            // Do something
            keyWindow.rootViewController = vc
        }
        
    }
    
    
    
    func presentToDoDetailScreen(view: TodoListView, todo: TodoItem) {
        let router = TodoDetailRouter()
        
        let todoDetailVC = router.createTodoDetailRouterModule(with: todo)
        
        guard let viewVC = view as? UIViewController else {
            fatalError("Invalid View Protocol type")
        }
        
        viewVC.navigationController?.pushViewController(todoDetailVC, animated: true)
    }
    
}
