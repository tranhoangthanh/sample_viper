//
//  CounterInteractor.swift
//  itune
//
//  Created by TranHoangThanh on 11/24/21.
//  Copyright © 2021 thanh. All rights reserved.
//

import Foundation

class CounterInteractor {
    
    weak var presenter : CounterOutputInteractor?
    var entity : CounterEntity!
 
    
    func responToPresenter() {
        let number = self.entity.numberVal
        self.presenter?.setUpdateNumber(number: number)
        self.presenter?.setDecreaseEnabled(enabled: number>0)
    }
    
}

extension CounterInteractor : CounterInputInteractor {
    
    func increase() {
        self.entity.increase()
        self.requestCount()
    }
    
    func decrease() {
        self.entity.decrease()
        self.requestCount()
    }
    
    func requestCount() {
        responToPresenter()
    }
}

