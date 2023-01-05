//
//  SignUpViewController.swift
//  desafio2
//
//  Created by unicred on 02/01/23.
//

import UIKit

class SignUpViewController: UIViewController {
    
    var addConstraintsSignUp = SignUpScreenView()
    
    override func loadView() {
       view = addConstraintsSignUp
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addConstraintsSignUp.goLoginButton.addTarget(self, action: #selector(goLogin), for: .touchUpInside)
    }
    
    @objc func goLogin() {
        let search = LoginViewController()
        self.navigationController?.pushViewController(search, animated: true)
    }
    
}
