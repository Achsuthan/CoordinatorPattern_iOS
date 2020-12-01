//
//  AuthViewController.swift
//  CordinatorPattern_iOS
//
//  Created by achsum on 29/11/20.
//  Copyright © 2020 Achsuthan. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {
    
    var authCoordinator: AuthCoordinator? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }

}
