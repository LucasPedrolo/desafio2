//
//  L-oginScreenView.swift
//  desafio2
//
//  Created by unicred on 02/01/23.
//

import UIKit

class LoginScreenView: UIView {
    
    lazy var loginButton: UIButton = {
        let login = UIButton(type: .custom)
        login.setTitle("Login", for: .normal)
        login.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        login.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        login.setTitleColor(.black, for: .normal)
        login.layer.masksToBounds = true
        login.layer.cornerRadius = 20
        login.layer.borderWidth = 2
        login.layer.borderColor = UIColor.black.cgColor
        
        return login
    }()
    
    lazy var signUpButton: UIButton = {
        let signUp = UIButton(type: .custom)
        signUp.setTitle("Sign Up", for: .normal)
        signUp.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        signUp.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        signUp.setTitleColor(.white, for: .normal)
        signUp.layer.masksToBounds = true
        signUp.layer.cornerRadius = 20
        signUp.layer.borderWidth = 2
        signUp.layer.borderColor = UIColor.black.cgColor
        signUp.backgroundColor = .black
        
        return signUp
    }()
    
    lazy var forgotPasswordButton: UIButton = {
        let forgotPassword = UIButton(type: .custom)
        forgotPassword.setTitle("forgot your password?", for: .normal)
        forgotPassword.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        forgotPassword.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        forgotPassword.setTitleColor(.black, for: .normal)
        forgotPassword.layer.masksToBounds = true
        
        return forgotPassword
    }()
    
    lazy var userTxtField: UITextField = {
        let user = UITextField()
        user.placeholder = "User"
        user.borderStyle = UITextField.BorderStyle.roundedRect
        user.autocorrectionType = UITextAutocorrectionType.no
        user.keyboardType = UIKeyboardType.default
        user.returnKeyType = UIReturnKeyType.done
        user.clearButtonMode = UITextField.ViewMode.whileEditing
        user.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        user.autocapitalizationType = .none
        
        return user
    }()
    
    lazy var passwordTxtField: UITextField = {
        let password = UITextField()
        password.placeholder = "Password"
        password.borderStyle = UITextField.BorderStyle.roundedRect
        password.autocorrectionType = UITextAutocorrectionType.no
        password.keyboardType = UIKeyboardType.default
        password.returnKeyType = UIReturnKeyType.done
        password.clearButtonMode = UITextField.ViewMode.whileEditing
        password.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        password.autocapitalizationType = .none
        password.isSecureTextEntry = true
        
        return password
    }()
    
    lazy var logoImage: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "hammer")
        logo.contentMode = .scaleAspectFit
        
        return logo
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addConstraints(){
        addSubview(loginButton)
        addSubview(signUpButton)
        addSubview(userTxtField)
        addSubview(passwordTxtField)
        addSubview(forgotPasswordButton)
        addSubview(logoImage)
        
        logoImage.anchor(top: nil, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 50, left: 100, bottom: 500, right:100), size: .init(width: 190, height: 200))
        
        userTxtField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 300, left: 30, bottom: 0, right: 30), size: .init(width: 150, height: 40))
        
        passwordTxtField.anchor(top: userTxtField.bottomAnchor, leading: userTxtField.leadingAnchor, bottom: nil, trailing: userTxtField.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 150, height: 40))
        
        forgotPasswordButton.anchor(top: passwordTxtField.bottomAnchor, leading: passwordTxtField.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 175, bottom: 0, right: 0), size: .init(width: 155, height: 0))
        
        loginButton.anchor(top: passwordTxtField.bottomAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 130, left: 70, bottom: 0, right: 70), size: .init(width: 70, height: 50))
        
        signUpButton.anchor(top: loginButton.bottomAnchor, leading: loginButton.leadingAnchor, bottom: nil, trailing: loginButton.trailingAnchor, padding: .init(top: 25, left: 0, bottom: 0, right: 0), size: .init(width: 70, height: 50))
    }
}
