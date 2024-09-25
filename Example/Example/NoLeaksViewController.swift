//
//  NoLeaksViewController.swift
//  MLeaksFinder-Example
//
//  Created by Sun on 2024/9/25.
//

import UIKit

class NoLeaksViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    deinit {
        let className = String(describing: type(of: self))
        print(className, "deinit")
    }
}
