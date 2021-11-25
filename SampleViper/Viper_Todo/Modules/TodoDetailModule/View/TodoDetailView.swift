//
//  TodoDetailView.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/25/21.
//

import Foundation


protocol TodoDetailView : AnyObject {
    func showTodo(_ todo : TodoItem)
}
