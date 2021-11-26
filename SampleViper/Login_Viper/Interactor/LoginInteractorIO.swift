//
//  LoginInteractorIO.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/26/21.
//

import Foundation



protocol LoginInteractorInput {
    func login(_ entity : LoginEntity)
}


protocol LoginInteractorOutput : AnyObject {
    func onError(message: String)
    func showTotoList()
}
