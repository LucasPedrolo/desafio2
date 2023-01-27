//
//  ViewController.swift
//  desafio2
//
//  Created by unicred on 02/01/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var addConstraintsLogin = LoginScreenView()
    var validar = SignUpViewController()
    var user: User?
    
    override func loadView() {
        view = addConstraintsLogin
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        navigationItem.hidesBackButton = true
        addConstraintsLogin.signUpButton.addTarget(self, action: #selector(goSignUp), for: .touchUpInside)
        addConstraintsLogin.loginButton.addTarget(self, action: #selector(goHomeScreen), for: .touchUpInside)
    }
    
    @objc func goSignUp() {
        let sign = SignUpViewController()
        self.navigationController?.pushViewController(sign, animated: true)
    }
    
    @objc func goHomeScreen() {
        validateLogin(email: user?.email ?? "", senha: user?.senha ?? "")
    }
    
    func receiveDataLogin(user: User) {
        self.user = user
    }
    
    func validateLogin(email: String, senha: String) {
        if email == addConstraintsLogin.userTxtField.text && senha == addConstraintsLogin.passwordTxtField.text {
            let home = HomeScreenViewController()
            self.navigationController?.pushViewController(home, animated: true)
        } else {
            print("Erro")
        }
    }
}
