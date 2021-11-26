//
//  HomeController.swift
//  itune
//
//  Created by TranHoangThanh on 11/24/21.
//  Copyright © 2021 thanh. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    @IBOutlet weak var decrease: UIButton!
    var presenter :  CounterPresenter!
    @IBOutlet weak var countLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.presenter?.updateView()
    }

    @IBAction func decrease(_ sender: Any) {
        self.presenter?.requestDecrease()
    }
    
    @IBAction func increase(_ sender: Any) {
        self.presenter?.requestIncrease()
    }
}


extension HomeController : CounterView {
    
    func setCounterLabel(text: String) {
        self.countLabel.text = text
        
    }
    
    func setDecreaseEnabled(enabled: Bool) {
        self.decrease.isEnabled = enabled
    }
    
    
}
