//
//  CounterInteractorIO.swift
//  itune
//
//  Created by TranHoangThanh on 11/24/21.
//  Copyright © 2021 thanh. All rights reserved.
//

import Foundation


protocol CounterInputInteractor {
   func increase()
   func decrease()
   func requestCount()
}


protocol CounterOutputInteractor : AnyObject {
    func setUpdateNumber(number : Int);
    func setDecreaseEnabled(enabled : Bool);
}
