//
//  CounterEntity.swift
//  itune
//
//  Created by TranHoangThanh on 11/24/21.
//  Copyright © 2021 thanh. All rights reserved.
//

import Foundation



struct CounterEntity  {
    
    var numberVal : Int = 0
    
    mutating func increase() {
        numberVal  += 1
    }
    
    mutating func decrease() {
        numberVal  -= 1
    }
}

