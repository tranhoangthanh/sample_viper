//
//  CounterView.swift
//  itune
//
//  Created by TranHoangThanh on 11/24/21.
//  Copyright © 2021 thanh. All rights reserved.
//

import Foundation

protocol CounterView : AnyObject {
    func setCounterLabel(text: String)
    func setDecreaseEnabled(enabled : Bool)
}
