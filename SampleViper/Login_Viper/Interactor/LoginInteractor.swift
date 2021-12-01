//
//  LoginInteractor.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/26/21.
//

import Foundation


class LoginInteractor  {
    var presenter : LoginInteractorOutput?
    
    
}

extension LoginInteractor : LoginInteractorInput {
    
    func login(_ entity: LoginEntity) {
        if entity.gmail!.isEmpty || entity.password!.isEmpty {
            presenter?.onError(message: "Can dien du thong tin")
            return
        }
        let dataStore = CoreDataManager.shared
        dataStore.save()
        presenter?.showTotoList()
    }
    
    
}
