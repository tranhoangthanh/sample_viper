//
//  TodoDetailRouter.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/25/21.
//

import Foundation
import UIKit



class TodoDetailRouter {
    
   func createTodoDetailRouterModule(with todo: TodoItem) -> UIViewController {
       let view = TodoDetailViewController()
       let presenter = TodoDetailPresenter()
       let interactor = TodoDetailInteractor(todoItem: todo)
       
       view.presenter = presenter
       presenter.view = view
       presenter.interactor = interactor
       interactor.presenter = presenter
       presenter.router = self
       
       return view
        
    }
    
    func navigateBackToListViewController(view: TodoDetailView) {
        
        guard let viewVC = view as? UIViewController else {
            fatalError("Invalid View Protocol type")
        }
        
        viewVC.navigationController?.popViewController(animated: true)
    }
}
