//
//  ViewController.swift
//  desafio2
//
//  Created by unicred on 02/01/23.
//

import UIKit

class LoginViewController: UIViewController {

    var addConstraints = LoginScreenView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }
    
    override func loadView() {
        view = addConstraints
    }
}

