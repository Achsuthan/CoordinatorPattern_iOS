//
//  MainCoordinator.swift
//  CordinatorPattern_iOS
//
//  Created by achsum on 29/11/20.
//  Copyright © 2020 Achsuthan. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var navigation: UINavigationController
    
    init(_ navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    //MARK: - Starting page for root
    func start() {
        let vc = MainViewController(nibName: nil, bundle: nil)
        vc.mainCoordinator = self
        self.navigation.viewControllers = [vc]
    }
    
    //MARK: - Push the details view controller
    func viewDetails(){
        let detailsVc = DetailsViewController(nibName: nil, bundle: nil)
        detailsVc.title = "Details"
        detailsVc.mainCoordinator = self
        self.navigation.pushViewController(detailsVc, animated: true)
    }
    
    //MARK: - Present the AuthViewcontroller with navigation controller
    func viewAuth(){
        let nv = UINavigationController()
        let authVc = AuthViewController(nibName: nil, bundle: nil)
        authVc.mainCoordinator = self
        authVc.title = "Login/SignUp"
        nv.viewControllers = [authVc]
        self.navigation.present(nv, animated: true, completion: nil)
    }
}
