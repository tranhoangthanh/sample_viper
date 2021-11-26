//
//  LoginPresenter.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/26/21.
//

import Foundation

class LoginPresenter {
    
    weak var view : LoginView?
    var interactor : LoginInteractorInput?
    var router : LoginRouter?
    
    func loginWith(_ entity : LoginEntity) {
        interactor?.login(entity)
    }
    
    func showTotoList() {
        guard let view = view else { return }
        router?.presentToDoList(view: view)
    }
}

extension LoginPresenter : LoginInteractorOutput {
    
    func onError(message: String) {
        self.view?.showErrorMessage(message)
    }
    
    
}
