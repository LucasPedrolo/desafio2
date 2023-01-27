//
//  SignUpViewController.swift
//  desafio2
//
//  Created by unicred on 03/01/23.
//

import UIKit

class SignUpScreenView: UIView {
    
    lazy var nomeTxtField: UITextField = {
        let nome = UITextField()
        nome.placeholder = "nome completo"
        nome.borderStyle = UITextField.BorderStyle.roundedRect
        nome.autocorrectionType = UITextAutocorrectionType.no
        nome.keyboardType = UIKeyboardType.default
        nome.returnKeyType = UIReturnKeyType.done
        nome.clearButtonMode = UITextField.ViewMode.whileEditing
        nome.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        nome.autocapitalizationType = .none
        
        return nome
    }()
    
    lazy var cpfTxtField: UITextField = {
        let cpf = UITextField()
        cpf.placeholder = "cpf"
        cpf.borderStyle = UITextField.BorderStyle.roundedRect
        cpf.autocorrectionType = UITextAutocorrectionType.no
        cpf.keyboardType = UIKeyboardType.default
        cpf.returnKeyType = UIReturnKeyType.done
        cpf.clearButtonMode = UITextField.ViewMode.whileEditing
        cpf.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        cpf.autocapitalizationType = .none
        
        return cpf
    }()
    
    lazy var emailTxtField: UITextField = {
        let email = UITextField()
        email.placeholder = "email"
        email.borderStyle = UITextField.BorderStyle.roundedRect
        email.autocorrectionType = UITextAutocorrectionType.no
        email.keyboardType = UIKeyboardType.default
        email.returnKeyType = UIReturnKeyType.done
        email.clearButtonMode = UITextField.ViewMode.whileEditing
        email.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        email.autocapitalizationType = .none
        
        return email
    }()
    
    lazy var senhaTxtField: UITextField = {
        let senha = UITextField()
        senha.placeholder = "senha"
        senha.borderStyle = UITextField.BorderStyle.roundedRect
        senha.autocorrectionType = UITextAutocorrectionType.no
        senha.keyboardType = UIKeyboardType.default
        senha.returnKeyType = UIReturnKeyType.done
        senha.clearButtonMode = UITextField.ViewMode.whileEditing
        senha.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        senha.autocapitalizationType = .none
        
        return senha
    }()
    
    lazy var cepTxtField: UITextField = {
        let cep = UITextField()
        cep.placeholder = "cep"
        cep.borderStyle = UITextField.BorderStyle.roundedRect
        cep.autocorrectionType = UITextAutocorrectionType.no
        cep.keyboardType = UIKeyboardType.default
        cep.returnKeyType = UIReturnKeyType.done
        cep.clearButtonMode = UITextField.ViewMode.whileEditing
        cep.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        cep.autocapitalizationType = .none
        
        return cep
    }()
    
    lazy var ruaTxtField: UITextField = {
        let rua = UITextField()
        rua.placeholder = "rua"
        rua.borderStyle = UITextField.BorderStyle.roundedRect
        rua.autocorrectionType = UITextAutocorrectionType.no
        rua.keyboardType = UIKeyboardType.default
        rua.returnKeyType = UIReturnKeyType.done
        rua.clearButtonMode = UITextField.ViewMode.whileEditing
        rua.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        rua.autocapitalizationType = .none
        
        return rua
    }()
    
    lazy var numeroTxtField: UITextField = {
        let numero = UITextField()
        numero.placeholder = "numero"
        numero.borderStyle = UITextField.BorderStyle.roundedRect
        numero.autocorrectionType = UITextAutocorrectionType.no
        numero.keyboardType = UIKeyboardType.default
        numero.returnKeyType = UIReturnKeyType.done
        numero.clearButtonMode = UITextField.ViewMode.whileEditing
        numero.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        numero.autocapitalizationType = .none
        
        return numero
    }()
    
    lazy var complementoTxtField: UITextField = {
        let complemento = UITextField()
        complemento.placeholder = "complemento"
        complemento.borderStyle = UITextField.BorderStyle.roundedRect
        complemento.autocorrectionType = UITextAutocorrectionType.no
        complemento.keyboardType = UIKeyboardType.default
        complemento.returnKeyType = UIReturnKeyType.done
        complemento.clearButtonMode = UITextField.ViewMode.whileEditing
        complemento.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        complemento.autocapitalizationType = .none
        
        return complemento
    }()
    
    lazy var cidadeTxtField: UITextField = {
        let cidade = UITextField()
        cidade.placeholder = "cidade"
        cidade.borderStyle = UITextField.BorderStyle.roundedRect
        cidade.autocorrectionType = UITextAutocorrectionType.no
        cidade.keyboardType = UIKeyboardType.default
        cidade.returnKeyType = UIReturnKeyType.done
        cidade.clearButtonMode = UITextField.ViewMode.whileEditing
        cidade.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        cidade.autocapitalizationType = .none
        
        return cidade
    }()
    
    lazy var estadoTxtField: UITextField = {
        let estado = UITextField()
        estado.placeholder = "estado"
        estado.borderStyle = UITextField.BorderStyle.roundedRect
        estado.autocorrectionType = UITextAutocorrectionType.no
        estado.keyboardType = UIKeyboardType.default
        estado.returnKeyType = UIReturnKeyType.done
        estado.clearButtonMode = UITextField.ViewMode.whileEditing
        estado.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        estado.autocapitalizationType = .none
        
        return estado
    }()
    
    lazy var infoLabel: UILabel = {
        let infoLbl = UILabel()
        infoLbl.text = "Informações Pessoais"
        infoLbl.textColor = .black
        infoLbl.font = UIFont.systemFont(ofSize: 18)
        infoLbl.textAlignment = .center
        
        return infoLbl
    }()
    
    lazy var enderecoLabel: UILabel = {
        let enderecoLbl = UILabel()
        enderecoLbl.text = "Informações de Endereço"
        enderecoLbl.textColor = .black
        enderecoLbl.font = UIFont.systemFont(ofSize: 18)
        enderecoLbl.textAlignment = .center
        
        return enderecoLbl
    }()
    
    lazy var goLoginButton: UIButton = {
        let goLogin = UIButton(type: .custom)
        goLogin.setTitle("Concluir", for: .normal)
        goLogin.titleLabel?.font = UIFont(name: "Montserrat", size: 0)
        goLogin.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        goLogin.setTitleColor(.black, for: .normal)
        goLogin.layer.masksToBounds = true
        goLogin.layer.borderWidth = 2
        goLogin.layer.cornerRadius = 20
        
        return goLogin
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addConstraints() {
        addSubview(nomeTxtField)
        addSubview(cpfTxtField)
        addSubview(emailTxtField)
        addSubview(senhaTxtField)
        addSubview(infoLabel)
        addSubview(enderecoLabel)
        addSubview(cepTxtField)
        addSubview(estadoTxtField)
        addSubview(cidadeTxtField)
        addSubview(ruaTxtField)
        addSubview(numeroTxtField)
        addSubview(complementoTxtField)
        addSubview(goLoginButton)
        
        nomeTxtField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 50, left: 20, bottom: -50, right: 20), size: .init(width: 250, height: 40))
        
        cpfTxtField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: nomeTxtField.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: nomeTxtField.trailingAnchor,padding: .init(top: 100, left: 0, bottom: 580, right:0), size: .init(width: 200, height: 10))
        
        emailTxtField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: cpfTxtField.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: cpfTxtField.trailingAnchor, padding: .init(top: 150, left: 0, bottom: 530, right:0), size: .init(width: 200, height: 10))
        
        senhaTxtField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: emailTxtField.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: emailTxtField.trailingAnchor, padding: .init(top: 200, left: 0, bottom: 480, right:0), size: .init(width: 200, height: 10))
        
        infoLabel.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right:0), size: .init(width: 200, height: 10))
        
        enderecoLabel.anchor(top: nil, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 445, right: 0), size: .init(width: 200, height: 10))
        
        cepTxtField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: emailTxtField.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: emailTxtField.trailingAnchor, padding: .init(top: 300, left: 0, bottom: 380, right: 0), size: .init(width: 200, height: 10))
        
        estadoTxtField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: cepTxtField.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: cepTxtField.trailingAnchor, padding: .init(top: 350, left: 0, bottom: 330, right: 0), size: .init(width: 200, height: 10))
        
        cidadeTxtField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: estadoTxtField.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: estadoTxtField.trailingAnchor, padding: .init(top: 400, left: 0, bottom: 280, right: 0), size: .init(width: 200, height: 10))
        
        ruaTxtField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: cidadeTxtField.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: cidadeTxtField.trailingAnchor, padding: .init(top: 450, left: 0, bottom: 230, right: 0), size: .init(width: 200, height: 10))
        
        numeroTxtField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: ruaTxtField.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: ruaTxtField.trailingAnchor, padding: .init(top: 500, left: 0, bottom: 180, right: 0), size: .init(width: 200, height: 10))
        
        complementoTxtField.anchor(top: safeAreaLayoutGuide.topAnchor, leading: numeroTxtField.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: numeroTxtField.trailingAnchor, padding: .init(top: 550, left: 0, bottom: 130, right: 0), size: .init(width: 200, height: 10))
        
        goLoginButton.anchor(top: safeAreaLayoutGuide.topAnchor, leading: complementoTxtField.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: complementoTxtField.trailingAnchor, padding: .init(top: 640, left: 80, bottom: 40, right: 80), size: .init(width: 200, height: 10))
    }
}
