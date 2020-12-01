//
//  Coordinator.swift
//  CordinatorPattern_iOS
//
//  Created by achsum on 29/11/20.
//  Copyright © 2020 Achsuthan. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    //This navigation is used to handle the UIViewControllers like presenting/pushing
    var navigation: UINavigationController {get set}
    var childCoordinators:[Coordinator] {get set}
    
    //Make the cordinator to take control
    func start()
}
