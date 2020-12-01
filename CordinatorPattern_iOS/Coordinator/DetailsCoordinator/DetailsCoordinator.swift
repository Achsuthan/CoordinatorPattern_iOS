//
//  DetailsCoordinator.swift
//  CordinatorPattern_iOS
//
//  Created by achsum on 1/12/20.
//  Copyright © 2020 Achsuthan. All rights reserved.
//

import Foundation
import UIKit

class DetailsCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigation: UINavigationController
    
    weak var parentCoordinator: MainCoordinator?
    
    init(_ nav: UINavigationController) {
        self.navigation = nav
    }
    
    func start() {
        let authVc = DetailsViewController(nibName: nil, bundle: nil)
        authVc.detailsCoordinator = self
        self.navigation.pushViewController(authVc, animated: true)
    }
}

