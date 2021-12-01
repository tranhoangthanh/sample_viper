//
//  LoginViewController.swift
//  SampleViper
//
//  Created by TranHoangThanh on 11/26/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var gmailTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    
    
    var presenter : LoginPresenter?
 
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }


    @IBAction func login(_ sender: Any) {
        let gmail = gmailTf.text ?? ""
        let pass = passwordTf.text ?? ""
        let dataStore = CoreDataManager.shared
        let newEntry = dataStore.newLoginEntity()
        newEntry.gmail = gmail
        newEntry.password = pass
        presenter?.loginWith(newEntry)
    }
    
}

extension LoginViewController : LoginView {
    func showErrorMessage(_ message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    
}
