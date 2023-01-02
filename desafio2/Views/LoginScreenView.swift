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
        login.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        login.setTitleColor(.black, for: .normal)
        login.layer.masksToBounds = true
        login.layer.cornerRadius = 20
        login.layer.borderWidth = 2
        login.layer.borderColor = UIColor.black.cgColor
        
        return login
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
        
        loginButton.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 585, left: 100, bottom: 200, right:100), size: .init(width: 150, height: 100))
    }
}
