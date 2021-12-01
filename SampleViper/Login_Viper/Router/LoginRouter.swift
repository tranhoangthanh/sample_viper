//
//  LoginRouter.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/26/21.
//

import Foundation
import UIKit


class LoginRouter {
    
    func checkLogin()  -> UIViewController {
        let items = CoreDataManager.shared.fetchLoginEntity()
        if !items.isEmpty {
            let router = TodoListRouter()
            
            let vc = router.createrTodoListModule()
          
            return vc
        } else {
            return createLoginRouterModule()
        }
    }
    
    
    func createLoginRouterModule() -> UIViewController {
        let view = LoginViewController()
        let presenter = LoginPresenter()
        let interactor = LoginInteractor()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        presenter.router = self
        return view
    }
    
    func presentToDoList(view : LoginView) {
        
        let router = TodoListRouter()
        
        let vc = router.createrTodoListModule()
        guard let viewVC = view as? UIViewController else {
            fatalError("Invalid View Protocol type")
        }
        
        viewVC.navigationController?.pushViewController(vc, animated: true)
    }
}
