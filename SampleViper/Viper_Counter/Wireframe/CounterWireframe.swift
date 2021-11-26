//
//  CounterWireframe.swift
//  itune
//
//  Created by TranHoangThanh on 11/24/21.
//  Copyright © 2021 thanh. All rights reserved.
//

import UIKit


class  CounterWireframe {
    var window : UIWindow
    

    init(window : UIWindow) {
        self.window = window
    }
    
    func setUpVIPERWithViewController() {
       
        let view = HomeController()
        let presenter = CounterPresenter()
        let interactor = CounterInteractor()
        let entity = CounterEntity()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.entity = entity
        
        self.window.rootViewController = view
    }
}
