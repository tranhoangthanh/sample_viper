//
//  TodoDetailViewController.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/25/21.
//

import UIKit

class TodoDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var contentLabel: UILabel!
    
    var presenter: TodoDetailPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        
        let editBarButtonItem = UIBarButtonItem(title: "Edit", style: .done, target: self, action: #selector(editTapped))
        let deleteBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTapped))
        self.navigationItem.rightBarButtonItems  =  [editBarButtonItem,deleteBarButtonItem]
        
    
    }
    
    
  @objc  func deleteTapped() {
        presenter?.deleteTodo()
    }
    
    
   @objc func editTapped() {
        let alertController = UIAlertController(title: "Edit Todo Item", message: "Enter title and content", preferredStyle: .alert)
        
        alertController.addTextField { $0.text = self.titleLabel.text }
        alertController.addTextField { $0.text = self.contentLabel.text }
        alertController.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { [weak self](_) in
            let titleText = alertController.textFields![0].text ?? ""
            let contentText = alertController.textFields![1].text ?? ""
            guard !titleText.isEmpty else { return }
            self?.presenter?.editTodo(title: titleText, content: contentText)
        }))
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alertController, animated: true, completion: nil)

    }


}

extension TodoDetailViewController : TodoDetailView {
    func showTodo(_ todo: TodoItem) {
        titleLabel.text = todo.title
        contentLabel.text = todo.content
    }
    
    
}
