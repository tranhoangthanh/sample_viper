//
//  CounterPresenter.swift
//  itune
//
//  Created by TranHoangThanh on 11/24/21.
//  Copyright © 2021 thanh. All rights reserved.
//

import Foundation

class CounterPresenter {
    
    var interactor : CounterInputInteractor?
    
    weak var view : CounterView?
    
    func requestIncrease() {
        self.interactor?.increase()
    }
    
    func requestDecrease() {
        self.interactor?.decrease()
    }
    
    func updateView() {
        self.interactor?.requestCount()
    }
    
}

extension  CounterPresenter : CounterOutputInteractor {
    func setUpdateNumber(number: Int) {
        self.view?.setCounterLabel(text: "\(number)")
    }
    
    func setDecreaseEnabled(enabled: Bool) {
        self.view?.setDecreaseEnabled(enabled: enabled)
    }
    
}
