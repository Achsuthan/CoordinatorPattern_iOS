//
//  MainViewController.swift
//  CordinatorPattern_iOS
//
//  Created by achsum on 29/11/20.
//  Copyright © 2020 Achsuthan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let btDetails: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Details", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    let btAuth: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login/Register", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    var mainCoordinator: MainCoordinator? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpUI()
    }
    

    // MARK: - SetUpUIs
    private func setUpUI(){
        self.view.backgroundColor = .white
        self.setUpBtDetails()
        self.setUpAuthButton()
        
    }
    
    //MARK: - SetUpDetailsButton
    private func setUpBtDetails(){
        self.view.addSubview(self.btDetails)
        self.btDetails.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        self.btDetails.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.btDetails.addTarget(self, action: #selector(self.btDetails(_:)), for: .touchUpInside)
    }
    
    //MARK: - SetUp Auth Button
    private func setUpAuthButton(){
        self.view.addSubview(self.btAuth)
        self.btAuth.topAnchor.constraint(equalTo: self.btDetails.bottomAnchor, constant: 10).isActive = true
        self.btAuth.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.btAuth.addTarget(self, action: #selector(self.btAuth(_:)), for: .touchUpInside)
    }
    
    //MARK: - IBActions
    //MARK: - Details button click event
    @IBAction func btDetails(_: Any){
        print("btDetails")
        self.mainCoordinator?.viewDetails()
    }
    
    //MARK: - Auth button click Event
    @IBAction func btAuth(_: Any){
        print("btAuth")
        self.mainCoordinator?.viewAuth()
    }
}
