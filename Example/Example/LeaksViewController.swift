//
//  LeaksViewController.swift
//  MLeaksFinder-Example
//
//  Created by Sun on 2024/9/25.
//

import UIKit

class LeaksViewController: UIViewController {
    
    var actionHandler: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actionHandler = {
            self.view.backgroundColor = .systemRed
        }
    }
    
    deinit {
        let className = String(describing: type(of: self))
        print(className, "deinit")
    }
}
