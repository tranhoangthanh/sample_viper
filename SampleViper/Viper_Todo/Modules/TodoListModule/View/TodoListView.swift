//
//  TodoListView.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/25/21.
//

import Foundation

protocol TodoListView : AnyObject {
    func showTodos(_ todos: [TodoItem])
    func showErrorMessage(_ message: String)
}
