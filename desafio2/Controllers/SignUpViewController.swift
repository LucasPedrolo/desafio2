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
    
    func dataSignUp() -> User {
        
        let data = User(nome: addConstraintsSignUp.nomeTxtField.text, cpf: addConstraintsSignUp.cpfTxtField.text, email: addConstraintsSignUp.emailTxtField.text, senha: addConstraintsSignUp.senhaTxtField.text, cep: addConstraintsSignUp.cepTxtField.text, estado: addConstraintsSignUp.estadoTxtField.text, cidade: addConstraintsSignUp.cidadeTxtField.text, rua: addConstraintsSignUp.ruaTxtField.text, numero: addConstraintsSignUp.numeroTxtField.text, complemento: addConstraintsSignUp.numeroTxtField.text)
        
        return data
    }

    @objc func goLogin() {
        let search = LoginViewController()
        search.receiveDataLogin(user: dataSignUp())
        self.navigationController?.pushViewController(search, animated: true)
    }
}
