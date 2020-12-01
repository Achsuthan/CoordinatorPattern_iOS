//
//  AuthCoordinator.swift
//  CordinatorPattern_iOS
//
//  Created by achsum on 1/12/20.
//  Copyright © 2020 Achsuthan. All rights reserved.
//

import Foundation
import UIKit

class AuthCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigation: UINavigationController
    
    weak var parentCoordinator: MainCoordinator?
    
    init(_ nav: UINavigationController) {
        self.navigation = nav
    }
    
    func start() {
        let authVc = AuthViewController(nibName: nil, bundle: nil)
        authVc.authCoordinator = self
        let nv = UINavigationController()
        authVc.title = "Login/SignUp Page"
        nv.viewControllers = [authVc]
        self.navigation.present(nv, animated: true, completion: nil)
    }
}
