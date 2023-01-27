//
//  HomeScreenView.swift
//  desafio2
//
//  Created by unicred on 04/01/23.
//

import UIKit

class HomeScreenView: UIView {
    
    lazy var minimumButton: UIButton = {
        let minimum = UIButton(type: .custom)
        let image = UIImage(named: "minimum")
        minimum.setBackgroundImage(image, for: UIControl.State.normal)
        minimum.layer.masksToBounds = true
        minimum.layer.cornerRadius = 20
        minimum.layer.borderWidth = 2
        minimum.layer.borderColor = UIColor.black.cgColor
        
        return minimum
    }()
    
    lazy var standardButton: UIButton = {
        let standard = UIButton(type: .custom)
        let image = UIImage(named: "standard")
        standard.setBackgroundImage(image, for: UIControl.State.normal)
        standard.layer.masksToBounds = true
        standard.layer.cornerRadius = 20
        standard.layer.borderWidth = 2
        standard.layer.borderColor = UIColor.black.cgColor
        
        return standard
    }()
    
    lazy var maximumButton: UIButton = {
        let maximum = UIButton(type: .custom)
        let image = UIImage(named: "maximum")
        maximum.setBackgroundImage(image, for: UIControl.State.normal)
        maximum.layer.masksToBounds = true
        maximum.layer.cornerRadius = 20
        maximum.layer.borderWidth = 2
        maximum.layer.borderColor = UIColor.black.cgColor
        
        return maximum
    }()
    
    lazy var typesLabel: UILabel = {
        let typeLbl = UILabel()
        typeLbl.text = "Choose Your Service"
        typeLbl.textColor = .black
        typeLbl.font = UIFont.systemFont(ofSize: 20)
        typeLbl.textAlignment = .center
        
        return typeLbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addConstraints(){
        addSubview(minimumButton)
        addSubview(standardButton)
        addSubview(maximumButton)
        addSubview(typesLabel)
        
        typesLabel.anchor(top: nil, leading: safeAreaLayoutGuide.leadingAnchor, bottom: minimumButton.topAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 30, right:0), size: .init(width: 200, height: 50))
        
        minimumButton.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: nil, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 100, left: 100, bottom: 710, right:100), size: .init(width: 150, height: 150))
        
        standardButton.anchor(top: minimumButton.bottomAnchor, leading: minimumButton.leadingAnchor, bottom: nil, trailing: minimumButton.trailingAnchor, padding: .init(top: 45, left: 0, bottom: 0, right:0), size: .init(width: 150, height: 150))
        
        maximumButton.anchor(top: standardButton.bottomAnchor, leading: standardButton.leadingAnchor, bottom: nil, trailing: standardButton.trailingAnchor, padding: .init(top: 45, left: 0, bottom: 0, right:0), size: .init(width: 150, height: 150))
    }
}
