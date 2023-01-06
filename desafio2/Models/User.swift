//
//  User.swift
//  desafio2
//
//  Created by unicred on 02/01/23.
//

import UIKit

class User: NSObject {
    
    var nome: String?
    var cpf: String?
    var email: String?
    var senha: String?
    var cep: String?
    var estado: String?
    var cidade: String?
    var rua: String?
    var numero: String?
    var complemento: String?
    
    init(nome: String?, cpf: String?, email: String?, senha: String?, cep: String?, estado: String?, cidade: String?, rua: String?, numero: String?, complemento: String?) {
        self.nome = nome
        self.email = email
        self.cpf = cpf
        self.senha = senha
        self.cep = cep
        self.estado = estado
        self.cidade = cidade
        self.rua = rua
        self.numero = numero
        self.complemento = complemento
    }
}
